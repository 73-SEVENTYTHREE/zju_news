import React from 'react';
import {Card} from "antd";

function Info (props) {
    return (
        <Card title={'网站简介'} hoverable>
            <li>这是浙江大学所有学院中英文官网新闻汇总的网站。</li>
            <li>本网站每日凌晨24点会自动更新新闻数据。</li>
        </Card>
    );
}

export default Info;