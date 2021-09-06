import React, {useEffect, useState} from 'react';
import {Card, Table, Tag, Space, message, Drawer, Button, Anchor} from "antd";
import axios from "axios";
import tables from "./tables";
import routes from "../../routes/routes";
const { Link } = Anchor;

const columns = [
    {
        title: '新闻标题',
        dataIndex: 'title',
        key: 'title',
        render: text => <strong>{text}</strong>,
    },
    {
        title: '副标题',
        dataIndex: 'subtitle',
        key: 'subtitle',
    },
    {
        title: '操作',
        key: 'action',
        render: (text, record) => (
            <Space size="middle">
                <a href={record.url} target={'_blank'}>跳转原文</a>
            </Space>
        ),
    },
];

const getName = college => {
    return routes.filter(item => {
        const reg = new RegExp(`/index/newsList/${college}/.*`)
        let flag = false
        item.routes.forEach(i => {
            if(reg.test(i.route)) flag = true
        })
        return flag
    })[0]?.name
}

function InfoShowList (props) {
    const {college, category} = props.match.params
    const name = props.location.state ? props.location.state.name : ''
    const websiteType = props.location.state? props.location.state.category :''
    console.log(name, websiteType)
    const [data,setData] = useState([])
    const [loading, setLoading] = useState(false)
    useEffect(() => {
        const getList = async () => {
            message.info('若当前页面数据较多，会出现加载较慢现象，请耐心等待...', 3)
            setLoading(true)
            const info = (await axios.post ("/api/getList", {
                college,
                language: category
            })).data
            setData(info.data)
            console.log(Object.entries(info.data).length)
            setLoading(false)
        }
        getList()
    }, [college, category])
    const handleAnchorClick = (e,link) => {
        e.preventDefault();
    };
    return (
        <>
            {
                college === 'recent' ? (
                    <div style={{maxHeight:'80vh', overflow: 'auto', display:'flex'}}>
                        <div >
                            <Anchor style={{width:'200px', maxHeight:'80vh', overflow:'auto'}} getContainer={() => document.getElementById('list')} onClick={handleAnchorClick}>
                                {
                                    tables.map(item => <Link href={`#${item}`} title={`${getName(item)}`} />)
                                }

                            </Anchor>
                        </div>
                        <div style={{ maxHeight:'80vh', overflow: 'auto'}} id={'list'}>
                            {
                                tables.map((item, index) =>
                                    <>
                                        <Card id={item} key={index} href={`#${item}`} title={<a href={`#${item}`}>{getName(item) + '——' + websiteType.substring(0, websiteType.length - 2)}</a>} style={{border:'0', maxHeight:'80vh', overflow: 'auto'}}>
                                            <Table columns={columns} dataSource={data[item]} loading={loading} pagination={false}/>
                                        </Card>
                                    </>
                                )
                            }
                        </div>
                    </div>
                ) : (
                    <Card title={name + '——' + websiteType} style={{border:'0', maxHeight:'80vh', overflow: 'auto'}}>
                        <Table columns={columns} dataSource={data} loading={loading}/>
                    </Card>
                )
            }
        </>
    );
}
export default InfoShowList;
