import {Form, Input, Button, Checkbox, message} from 'antd';
import banner from "../../banner.png";
import {Header} from "antd/es/layout/layout";
import axios from "axios";
import cookie from 'react-cookies'

const Login = props => {
    const onFinish = async (values: any) => {
        const data = (await axios.post ('/api/auth/login', {
            username: values.username,
            password: values.password
        })).data
        if(data.code === 200){
            cookie.save('username', values.username)
            props.history.push ({pathname: '/index'})
        }
        else {
            message.warning('账号或密码错误，请重新输入！')
        }
    };

    const onFinishFailed = (errorInfo: any) => {
        console.log('Failed:', errorInfo);
    };

    return (
        <div>
            <Header className="header" style={{backgroundColor:'rgb(6, 22, 72)', position:'sticky', top:'0', zIndex:'1', height:'8vh'}}>
                <div className="logo" >
                    <img src={banner} alt={'logo'} style={{height:'2.5rem'}}/>
                </div>
            </Header>
            <div style={{padding:'auto 0 auto 0',position:'absolute', top:'50%',width:'100vw', transform:'translateY(-50%)'}}>
                <Form
                    name="basic"
                    labelCol={{ span: 8 }}
                    wrapperCol={{ span: 8 }}
                    initialValues={{ remember: true }}
                    onFinish={onFinish}
                    onFinishFailed={onFinishFailed}
                >
                    <Form.Item
                        label="账号"
                        name="username"
                        rules={[{ required: true, message: '请输入账号!' }]}
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        label="密码"
                        name="password"
                        rules={[{ required: true, message: '请输入密码!' }]}
                    >
                        <Input.Password />
                    </Form.Item>

                    <Form.Item name="remember" valuePropName="checked" wrapperCol={{ offset: 8, span: 8 }}>
                        <Checkbox>记住我</Checkbox>
                    </Form.Item>

                    <Form.Item wrapperCol={{ offset: 8, span: 8 }}>
                        <Button type="primary" htmlType="submit">
                            登录
                        </Button>
                    </Form.Item>
                </Form>
            </div>
        </div>

    );
};
export default Login;