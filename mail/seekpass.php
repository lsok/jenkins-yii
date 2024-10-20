<p>尊敬的<?= $adminuser ?>：</p>

<p>您的找回密码链接如下：</p>

<?php
$url = Yii::$app->urlManager->createAbsoluteUrl(['admin/manage/mailchangepass', 'timestamp' => $time, 'adminuser' => $adminuser, 'token' => $token]);
?>

<p><a href="<?= $url ?>"><?= $url ?></a></p>

<p>该链接5分钟内有效.</p>

<p>此邮件为系统自动发送，请勿回复.</p>