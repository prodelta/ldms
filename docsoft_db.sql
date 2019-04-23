-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 14, 2019 at 11:48 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docsoft_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director_master`
--

DROP TABLE IF EXISTS `tbl_director_master`;
CREATE TABLE IF NOT EXISTS `tbl_director_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `digi_sign_num` varchar(200) NOT NULL,
  `exp_date` date NOT NULL,
  `alertdays` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_director_master`
--

INSERT INTO `tbl_director_master` (`id`, `user_id`, `name`, `digi_sign_num`, `exp_date`, `alertdays`, `updated_at`, `created_at`) VALUES
(1, 'NA716790', 'admin', '7222', '2019-02-22', 10, '2019-02-19 23:37:38', '2019-02-19 23:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_documents`
--

DROP TABLE IF EXISTS `tbl_documents`;
CREATE TABLE IF NOT EXISTS `tbl_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `doc_name` varchar(200) NOT NULL,
  `purpose` text NOT NULL,
  `reg_date` date NOT NULL,
  `renewal_date` date NOT NULL,
  `count_doc_renewed` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `doc_shared_to` varchar(150) NOT NULL,
  `alertdays` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_documents`
--

INSERT INTO `tbl_documents` (`id`, `user_id`, `doc_name`, `purpose`, `reg_date`, `renewal_date`, `count_doc_renewed`, `amount`, `doc_shared_to`, `alertdays`, `updated_at`, `created_at`) VALUES
(1, 'NA716790', 'dsfsdf', 'dfsdsf', '2019-02-21', '2019-03-20', 3, 2000, 'fsdfdsf', 10, '2019-02-20 00:14:44', '2019-02-20 00:14:44'),
(2, 'AS390295', 'pass port', 'to record', '2019-02-21', '2019-02-28', 2, 2000, 'dsad', 8, '2019-02-20 00:21:21', '2019-02-20 00:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_document_images`
--

DROP TABLE IF EXISTS `tbl_document_images`;
CREATE TABLE IF NOT EXISTS `tbl_document_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` int(11) NOT NULL,
  `doc_img_path` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `doc_id` (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_document_images`
--

INSERT INTO `tbl_document_images` (`id`, `document_id`, `doc_img_path`, `updated_at`, `created_at`) VALUES
(1, 1, 'assets/Documents/dsfsdf_20-02-2019_05-44-44_1.jpg', '2019-02-20 00:14:44', '2019-02-20 00:14:44'),
(2, 2, 'assets/Documents/pass port_20-02-2019_05-51-21_1.jpg', '2019-02-20 00:21:21', '2019-02-20 00:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foriegnnationals`
--

DROP TABLE IF EXISTS `tbl_foriegnnationals`;
CREATE TABLE IF NOT EXISTS `tbl_foriegnnationals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(120) NOT NULL,
  `country` varchar(100) NOT NULL,
  `passport_num` varchar(100) NOT NULL,
  `visa_num` varchar(100) NOT NULL,
  `visa_exp_date` date NOT NULL,
  `embassy_addr` text NOT NULL,
  `alertdays` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_foriegnnationals`
--

INSERT INTO `tbl_foriegnnationals` (`id`, `user_id`, `name`, `country`, `passport_num`, `visa_num`, `visa_exp_date`, `embassy_addr`, `alertdays`, `updated_at`, `created_at`) VALUES
(1, 'NA716790', 'cxv', 'dfdsf', '3434', '3434', '2019-02-20', 'ddfdfd dvdv', 10, '2019-02-20 00:17:46', '2019-02-20 00:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_insurance_images`
--

DROP TABLE IF EXISTS `tbl_insurance_images`;
CREATE TABLE IF NOT EXISTS `tbl_insurance_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insurance_id` int(11) NOT NULL,
  `ins_certificate_path` varchar(225) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `insurance_id` (`insurance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_insurance_images`
--

INSERT INTO `tbl_insurance_images` (`id`, `insurance_id`, `ins_certificate_path`, `updated_at`, `created_at`) VALUES
(1, 1, 'assets/Insurance_Certificates/dvsdv_20-02-2019_05-49-28.jpg', '2019-02-20 00:19:28', '2019-02-20 00:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_insurance_master`
--

DROP TABLE IF EXISTS `tbl_insurance_master`;
CREATE TABLE IF NOT EXISTS `tbl_insurance_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `amt_paid` varchar(200) NOT NULL,
  `exp_date` date NOT NULL,
  `no_of_renewals` int(11) NOT NULL,
  `contact_person` varchar(200) NOT NULL,
  `contact_number` bigint(20) NOT NULL,
  `alertdays` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_insurance_master`
--

INSERT INTO `tbl_insurance_master` (`id`, `user_id`, `name`, `company`, `date`, `amt_paid`, `exp_date`, `no_of_renewals`, `contact_person`, `contact_number`, `alertdays`, `updated_at`, `created_at`) VALUES
(1, 'NA716790', 'dvsdv', 'fdf', '2019-02-21', '3232', '2019-02-20', 3, 'dada', 43432434, 10, '2019-02-20 00:19:28', '2019-02-20 00:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_signup`
--

DROP TABLE IF EXISTS `tbl_signup`;
CREATE TABLE IF NOT EXISTS `tbl_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `user_name` varchar(120) NOT NULL,
  `password` varchar(25) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_signup`
--

INSERT INTO `tbl_signup` (`id`, `user_id`, `user_name`, `password`, `updated_at`, `created_at`) VALUES
(1, 'NA716790', 'Nagu', 'nagu123', '2019-02-19 07:19:59', '2019-02-19 07:19:59'),
(2, 'AS390295', 'Asha', 'asha123', '2019-02-19 07:21:13', '2019-02-19 07:21:13');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_director_master`
--
ALTER TABLE `tbl_director_master`
  ADD CONSTRAINT `tbl_director_master_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_signup` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_documents`
--
ALTER TABLE `tbl_documents`
  ADD CONSTRAINT `tbl_documents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_signup` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_document_images`
--
ALTER TABLE `tbl_document_images`
  ADD CONSTRAINT `tbl_document_images_ibfk_1` FOREIGN KEY (`document_id`) REFERENCES `tbl_documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_foriegnnationals`
--
ALTER TABLE `tbl_foriegnnationals`
  ADD CONSTRAINT `tbl_foriegnnationals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_signup` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_insurance_images`
--
ALTER TABLE `tbl_insurance_images`
  ADD CONSTRAINT `tbl_insurance_images_ibfk_1` FOREIGN KEY (`insurance_id`) REFERENCES `tbl_insurance_master` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_insurance_master`
--
ALTER TABLE `tbl_insurance_master`
  ADD CONSTRAINT `tbl_insurance_master_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_signup` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
<!DOCTYPE HTML><html lang='en' dir='ltr'><head><meta charset="utf-8" /><meta name="referrer" content="no-referrer" /><meta name="robots" content="noindex,nofollow" /><meta http-equiv="X-UA-Compatible" content="IE=Edge" /><meta name="viewport" content="width=device-width, initial-scale=1.0"><style id="cfs-style">html{display: none;}</style><link rel="icon" href="favicon.ico" type="image/x-icon" /><link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /><link rel="stylesheet" type="text/css" href="./themes/pmahomme/jquery/jquery-ui.css" /><link rel="stylesheet" type="text/css" href="js/vendor/codemirror/lib/codemirror.css?v=4.8.4" /><link rel="stylesheet" type="text/css" href="js/vendor/codemirror/addon/hint/show-hint.css?v=4.8.4" /><link rel="stylesheet" type="text/css" href="js/vendor/codemirror/addon/lint/lint.css?v=4.8.4" /><link rel="stylesheet" type="text/css" href="phpmyadmin.css.php?nocache=4634171511ltr&amp;server=1" /><link rel="stylesheet" type="text/css" href="./themes/pmahomme/css/printview.css?v=4.8.4" media="print" id="printcss"/><title>phpMyAdmin</title><script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery.min.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery-migrate.js?v=4.8.4"></script>
<script data-cfasync='false' type='text/javascript' src='js/whitelist.php?v=4.8.4'></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/sprintf.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/ajax.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/keyhandler.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery-ui.min.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/js.cookie.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery.mousewheel.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery.event.drag-2.2.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery.validate.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery-ui-timepicker-addon.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery.ba-hashchange-1.3.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery.debounce-1.0.5.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/menu-resizer.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/cross_framing_protection.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/rte.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/tracekit.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/error_report.js?v=4.8.4"></script>
<script data-cfasync='false' type='text/javascript' src='js/messages.php?l=en&amp;v=4.8.4'></script>
<script data-cfasync="false" type="text/javascript" src="js/config.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/doclinks.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/functions.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/navigation.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/indexes.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/common.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/page_settings.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/shortcuts_handler.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/lib/codemirror.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/mode/sql/sql.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/addon/runmode/runmode.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/addon/hint/show-hint.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/addon/hint/sql-hint.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/addon/lint/lint.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/codemirror/addon/lint/sql-lint.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript" src="js/console.js?v=4.8.4"></script>
<script data-cfasync="false" type="text/javascript">// <![CDATA[
PMA_commonParams.setAll({common_query:"",opendb_url:"db_structure.php",lang:"en",server:"1",table:"",db:"",token:"GHLPi9lQK)R#gvc8",text_dir:"ltr",show_databases_navigation_as_tree:true,pma_text_default_tab:"Browse",pma_text_left_default_tab:"Structure",pma_text_left_default_tab2:false,LimitChars:"50",pftext:"",confirm:true,LoginCookieValidity:"1440",session_gc_maxlifetime:"1440",logged_in:false,is_https:false,rootPath:"/phpmyadmin/",arg_separator:"&",PMA_VERSION:"4.8.4",auth_type:"cookie",user:""});
ConsoleEnterExecutes=false
AJAX.scriptHandler.add("vendor/jquery/jquery.min.js",0).add("vendor/jquery/jquery-migrate.js",0).add("whitelist.php",1).add("vendor/sprintf.js",1).add("ajax.js",0).add("keyhandler.js",1).add("vendor/jquery/jquery-ui.min.js",0).add("vendor/js.cookie.js",1).add("vendor/jquery/jquery.mousewheel.js",0).add("vendor/jquery/jquery.event.drag-2.2.js",0).add("vendor/jquery/jquery.validate.js",0).add("vendor/jquery/jquery-ui-timepicker-addon.js",0).add("vendor/jquery/jquery.ba-hashchange-1.3.js",0).add("vendor/jquery/jquery.debounce-1.0.5.js",0).add("menu-resizer.js",1).add("cross_framing_protection.js",0).add("rte.js",1).add("vendor/tracekit.js",1).add("error_report.js",1).add("messages.php",0).add("config.js",1).add("doclinks.js",1).add("functions.js",1).add("navigation.js",1).add("indexes.js",1).add("common.js",1).add("page_settings.js",1).add("shortcuts_handler.js",1).add("vendor/codemirror/lib/codemirror.js",0).add("vendor/codemirror/mode/sql/sql.js",0).add("vendor/codemirror/addon/runmode/runmode.js",0).add("vendor/codemirror/addon/hint/show-hint.js",0).add("vendor/codemirror/addon/hint/sql-hint.js",0).add("vendor/codemirror/addon/lint/lint.js",0).add("codemirror/addon/lint/sql-lint.js",0).add("console.js",1);
$(function() {AJAX.fireOnload("whitelist.php");AJAX.fireOnload("vendor/sprintf.js");AJAX.fireOnload("keyhandler.js");AJAX.fireOnload("vendor/js.cookie.js");AJAX.fireOnload("menu-resizer.js");AJAX.fireOnload("rte.js");AJAX.fireOnload("vendor/tracekit.js");AJAX.fireOnload("error_report.js");AJAX.fireOnload("config.js");AJAX.fireOnload("doclinks.js");AJAX.fireOnload("functions.js");AJAX.fireOnload("navigation.js");AJAX.fireOnload("indexes.js");AJAX.fireOnload("common.js");AJAX.fireOnload("page_settings.js");AJAX.fireOnload("shortcuts_handler.js");AJAX.fireOnload("console.js");});
// ]]></script><noscript><style>html{display:block}</style></noscript></head><body id='loginform'><div id="page_content"><div class="container">
<a href="./url.php?url=https%3A%2F%2Fwww.phpmyadmin.net%2F" target="_blank" rel="noopener noreferrer" class="logo">
<img src="./themes/pmahomme/img/logo_right.png" id="imLogo" name="imLogo" alt="phpMyAdmin" border="0" />
</a>
<h1>Welcome to <bdo dir="ltr" lang="en">phpMyAdmin</bdo></h1>

<noscript>
<div class="error"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_error" /> Javascript must be enabled past this point!</div>
</noscript>

<div class="hide" id="js-https-mismatch">
<div class="error"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_error" /> There is mismatch between HTTPS indicated on the server and client. This can lead to non working phpMyAdmin or a security risk. Please fix your server configuration to indicate HTTPS properly.</div>
</div>
<div class='hide js-show'>    <form method="get" action="index.php" class="disableAjax">
    <input type="hidden" name="db" value="" /><input type="hidden" name="table" value="" /><input type="hidden" name="token" value="GHLPi9lQK)R#gvc8" />

            <fieldset>
            <legend lang="en" dir="ltr">Language</legend>
    
    <select name="lang" class="autosubmit" lang="en" dir="ltr" id="sel-lang">

                    <option value="ar">
        &#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577; - Arabic
        </option>
                    <option value="hy">
        Հայերէն - Armenian
        </option>
                    <option value="az">
        Az&#601;rbaycanca - Azerbaijani
        </option>
                    <option value="bn">
        বাংলা - Bangla
        </option>
                    <option value="be">
        &#1041;&#1077;&#1083;&#1072;&#1088;&#1091;&#1089;&#1082;&#1072;&#1103; - Belarusian
        </option>
                    <option value="pt_br">
        Portugu&ecirc;s - Brazilian Portuguese
        </option>
                    <option value="bg">
        &#1041;&#1098;&#1083;&#1075;&#1072;&#1088;&#1089;&#1082;&#1080; - Bulgarian
        </option>
                    <option value="ca">
        Catal&agrave; - Catalan
        </option>
                    <option value="zh_cn">
        &#20013;&#25991; - Chinese simplified
        </option>
                    <option value="zh_tw">
        &#20013;&#25991; - Chinese traditional
        </option>
                    <option value="cs">
        Čeština - Czech
        </option>
                    <option value="da">
        Dansk - Danish
        </option>
                    <option value="nl">
        Nederlands - Dutch
        </option>
                    <option value="en"                selected="selected">
        English
        </option>
                    <option value="en_gb">
        English (United Kingdom)
        </option>
                    <option value="et">
        Eesti - Estonian
        </option>
                    <option value="fi">
        Suomi - Finnish
        </option>
                    <option value="fr">
        Fran&ccedil;ais - French
        </option>
                    <option value="gl">
        Galego - Galician
        </option>
                    <option value="de">
        Deutsch - German
        </option>
                    <option value="el">
        &Epsilon;&lambda;&lambda;&eta;&nu;&iota;&kappa;&#940; - Greek
        </option>
                    <option value="he">
        &#1506;&#1489;&#1512;&#1497;&#1514; - Hebrew
        </option>
                    <option value="hu">
        Magyar - Hungarian
        </option>
                    <option value="id">
        Bahasa Indonesia - Indonesian
        </option>
                    <option value="ia">
        Interlingua
        </option>
                    <option value="it">
        Italiano - Italian
        </option>
                    <option value="ja">
        &#26085;&#26412;&#35486; - Japanese
        </option>
                    <option value="ko">
        &#54620;&#44397;&#50612; - Korean
        </option>
                    <option value="lt">
        Lietuvi&#371; - Lithuanian
        </option>
                    <option value="nb">
        Norsk - Norwegian
        </option>
                    <option value="pl">
        Polski - Polish
        </option>
                    <option value="pt">
        Portugu&ecirc;s - Portuguese
        </option>
                    <option value="ro">
        Rom&acirc;n&#259; - Romanian
        </option>
                    <option value="ru">
        &#1056;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081; - Russian
        </option>
                    <option value="sr@latin">
        Srpski - Serbian (latin)
        </option>
                    <option value="si">
        &#3523;&#3538;&#3458;&#3524;&#3517; - Sinhala
        </option>
                    <option value="sq">
        Shqip - Slbanian
        </option>
                    <option value="sk">
        Sloven&#269;ina - Slovak
        </option>
                    <option value="sl">
        Sloven&scaron;&#269;ina - Slovenian
        </option>
                    <option value="es">
        Espa&ntilde;ol - Spanish
        </option>
                    <option value="sv">
        Svenska - Swedish
        </option>
                    <option value="tr">
        T&uuml;rk&ccedil;e - Turkish
        </option>
                    <option value="uk">
        &#1059;&#1082;&#1088;&#1072;&#1111;&#1085;&#1089;&#1100;&#1082;&#1072; - Ukrainian
        </option>
                    <option value="vi">
        Tiếng Việt - Vietnamese
        </option>
    
    </select>

            </fieldset>
    
    </form>
</div>
    <br />
    <!-- Login form -->
    <form method="post" id="login_form" action="index.php" name="login_form" class="disableAjax login hide js-show">
        <fieldset>
        <legend><input type="hidden" name="set_session" value="00ulrutc92obmbhgks40e4mnl1" />Log in<a href="./doc/html/index.html" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a></legend><div class="item">
                <label for="input_username">Username:</label>
                <input type="text" name="pma_username" id="input_username" value="root" size="24" class="textfield"/>
            </div>
            <div class="item">
                <label for="input_password">Password:</label>
                <input type="password" name="pma_password" id="input_password" value="" size="24" class="textfield" />
            </div><div class="item">
                <label for="select_server">Server Choice:</label>
                <select name="server" id="select_server"><option value="1"  selected="selected">MySQL</option>
<option value="2" >MariaDB</option>
</select></div></fieldset><fieldset class="tblFooters"><input value="Go" type="submit" id="input_go" /><input type="hidden" name="target" value="export.php" /><input type="hidden" name="token" value="GHLPi9lQK)R#gvc8" /></fieldset>
    </form></div>
</div></body></html>