import {Button, Layout, Menu, message, Popover, Tooltip} from "antd";
import {BookOutlined, QuestionCircleOutlined} from '@ant-design/icons';
import {Route, Switch, Redirect, Link} from 'react-router-dom'
import InfoShowList from "../../components/InfoShowList";
import Info from "../../components/Info";
import routes from "../../routes/routes";
import './index.css';
import banner from '../../banner.png'
import {useEffect, useState} from "react";
import axios from "axios";


const { SubMenu } = Menu;
const { Header, Content, Sider } = Layout;

function Index(props) {
    return (
        <Layout>
            <Header className="header" style={{backgroundColor:'rgb(6, 22, 72)', position:'sticky', top:'0', zIndex:'1', height:'8vh'}}>
                <div style={{display:'flex', justifyContent:'space-between'}}>
                    <div className="logo" >
                        <Link to={'/index'}><img src={banner} alt={'logo'} style={{height:'2.5rem'}}/></Link>
                    </div>
                    <div style={{display:'flex', alignItems:'center'}}>
                        <Tooltip title={"每天24点会准时更新一次。"}>
                            <h4 style={{color:'silver'}}>更新时间<QuestionCircleOutlined style={{marginLeft:'8px'}}/></h4>
                        </Tooltip>
                    </div>
                </div>
            </Header>
            <Layout>
                <Sider width={280} className="site-layout-background">
                    <Menu
                        mode="inline"
                        style={{ height: '100%', borderRight: 0 }}
                    >
                        {
                            routes.map((item, index) => {
                                return (
                                    <SubMenu key={index} icon={<BookOutlined />} title={item.name}>
                                        {
                                            item.routes.map((item2, index2) => (
                                                <Menu.Item onClick={() => {props.history.push({pathname:item2.route, state:{name:item.name, category:item2.name}})}}>{item2.name}</Menu.Item>
                                            ))
                                        }
                                    </SubMenu>
                                )
                            })
                        }

                    </Menu>
                </Sider>
                <Layout style={{ padding: '0 24px 24px' }}>
                    <Content
                        className="site-layout-background"
                        style={{
                            padding: 24,
                            margin: '1.5rem 0 0 0'
                        }}
                    >
                        <Switch>
                            <Route path={'/index/introduction'} component={Info}/>
                            <Route path={'/index/newsList/:college/:category'} component={InfoShowList}/>
                            <Redirect to={'/index/introduction'}/>
                        </Switch>
                    </Content>
                </Layout>
            </Layout>
        </Layout>
    );
}

export default Index;
