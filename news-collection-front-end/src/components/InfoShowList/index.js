import React, {useEffect, useState} from 'react';
import {Card, Table, Tag, Space} from "antd";
import axios from "axios";

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

function InfoShowList (props) {
    const {college, category} = props.match.params
    const name = props.location.state ? props.location.state.name : ''
    const websiteType = props.location.state? props.location.state.category :''
    const [data,setData] = useState([])
    const [loading, setLoading] = useState(false)
    useEffect(() => {
        const getList = async () => {
            setLoading(true)
            const info = (await axios.post ("http://localhost:4000/api/getList", {
                college,
                language: category
            })).data
            setData(info.data)
            setLoading(false)
        }
        getList()
    }, [college, category])
    return (
        <Card title={name + '——' + websiteType} style={{border:'0', maxHeight:'80vh', overflow: 'auto'}}>
            <Table columns={columns} dataSource={data} loading={loading}/>
        </Card>
    );
}

export default InfoShowList;