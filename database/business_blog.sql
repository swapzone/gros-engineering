-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2017 at 06:43 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business_blog`
--
CREATE DATABASE IF NOT EXISTS `business_blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `business_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `caches`
--

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `caches`
--

INSERT INTO `caches` (`name`, `data`, `expires`) VALUES
('Modules.wire/modules/', 'AdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypeFile.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeImage.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeTextarea.module\nFieldtype/FieldtypeURL.module\nFileCompilerTags.module\nImageSizerEngineIMagick.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldCheckbox.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldHidden.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldInteger.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldName.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldText.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldURL.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/LanguageSupportFields.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLazyCron.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupCache.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupPageFields.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupRSS.module\nPage/PageFrontEdit/PageFrontEdit.module\nPagePathHistory.module\nPagePaths.module\nPagePermissions.module\nPageRender.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessForgotPassword.module\nProcess/ProcessHome.module\nProcess/ProcessList.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessPageClone.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessPageSort.module\nProcess/ProcessPageTrash.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessPageView.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessUser/ProcessUser.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nSystem/SystemNotifications/SystemNotifications.module\nSystem/SystemUpdater/SystemUpdater.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterStripTags.module', '2010-04-08 03:10:10'),
('ModulesUninstalled.info', '{"AdminThemeReno":{"name":"AdminThemeReno","title":"Reno","version":17,"versionStr":"0.1.7","author":"Tom Reno (Renobird)","summary":"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)","requiresVersions":{"AdminThemeDefault":[">=",0]},"autoload":"template=admin","created":1483876356,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"FieldtypeCache":{"name":"FieldtypeCache","title":"Cache","version":102,"versionStr":"1.0.2","summary":"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.","created":1483876357,"installed":false,"namespace":"ProcessWire\\\\","core":true},"CommentFilterAkismet":{"name":"CommentFilterAkismet","title":"Comment Filter: Akismet","version":102,"versionStr":"1.0.2","summary":"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.","requiresVersions":{"FieldtypeComments":[">=",0]},"created":1483876357,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"FieldtypeComments":{"name":"FieldtypeComments","title":"Comments","version":107,"versionStr":"1.0.7","summary":"Field that stores user posted comments for a single Page","installs":["InputfieldCommentsAdmin"],"created":1483876357,"installed":false,"namespace":"ProcessWire\\\\","core":true},"InputfieldCommentsAdmin":{"name":"InputfieldCommentsAdmin","title":"Comments Admin","version":104,"versionStr":"1.0.4","summary":"Provides an administrative interface for working with comments","requiresVersions":{"FieldtypeComments":[">=",0]},"created":1483876357,"installed":false,"namespace":"ProcessWire\\\\","core":true},"FieldtypeOptions":{"name":"FieldtypeOptions","title":"Select Options","version":1,"versionStr":"0.0.1","summary":"Field that stores single and multi select options.","created":1483876357,"installed":false,"namespace":"ProcessWire\\\\","core":true},"FieldtypePageTable":{"name":"FieldtypePageTable","title":"ProFields: Page Table","version":8,"versionStr":"0.0.8","summary":"A fieldtype containing a group of editable pages.","installs":["InputfieldPageTable"],"autoload":true,"created":1483876357,"installed":false,"namespace":"ProcessWire\\\\","core":true},"FieldtypeRepeater":{"name":"FieldtypeRepeater","title":"Repeater","version":105,"versionStr":"1.0.5","summary":"Maintains a collection of fields that are repeated for any number of times.","installs":["InputfieldRepeater"],"autoload":true,"created":1483876358,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"InputfieldRepeater":{"name":"InputfieldRepeater","title":"Repeater","version":105,"versionStr":"1.0.5","summary":"Repeats fields from another template. Provides the input for FieldtypeRepeater.","requiresVersions":{"FieldtypeRepeater":[">=",0]},"created":1483876358,"installed":false,"namespace":"ProcessWire\\\\","core":true},"FieldtypeSelector":{"name":"FieldtypeSelector","title":"Selector","version":13,"versionStr":"0.1.3","author":"Avoine + ProcessWire","summary":"Build a page finding selector visually.","created":1483876357,"installed":false,"namespace":"ProcessWire\\\\","core":true},"FileCompilerTags":{"name":"FileCompilerTags","title":"Tags File Compiler","version":1,"versionStr":"0.0.1","summary":"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.","created":1483876356,"installed":false,"configurable":4,"namespace":"ProcessWire\\\\","core":true},"ImageSizerEngineIMagick":{"name":"ImageSizerEngineIMagick","title":"IMagick Image Sizer","version":1,"versionStr":"0.0.1","author":"Horst Nogajski","summary":"Upgrades image manipulations to use PHP''s ImageMagick library when possible.","created":1483876356,"installed":false,"configurable":4,"namespace":"ProcessWire\\\\","core":true},"InputfieldPageAutocomplete":{"name":"InputfieldPageAutocomplete","title":"Page Auto Complete","version":112,"versionStr":"1.1.2","summary":"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.","created":1483876366,"installed":false,"namespace":"ProcessWire\\\\","core":true},"InputfieldPageTable":{"name":"InputfieldPageTable","title":"ProFields: Page Table","version":13,"versionStr":"0.1.3","summary":"Inputfield to accompany FieldtypePageTable","requiresVersions":{"FieldtypePageTable":[">=",0]},"created":1483876366,"installed":false,"namespace":"ProcessWire\\\\","core":true},"LazyCron":{"name":"LazyCron","title":"Lazy Cron","version":102,"versionStr":"1.0.2","summary":"Provides hooks that are automatically executed at various intervals. It is called ''lazy'' because it''s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. ","href":"http:\\/\\/processwire.com\\/talk\\/index.php\\/topic,284.0.html","autoload":true,"singular":true,"created":1483876356,"installed":false,"namespace":"ProcessWire\\\\","core":true},"MarkupCache":{"name":"MarkupCache","title":"Markup Cache","version":101,"versionStr":"1.0.1","summary":"A simple way to cache segments of markup in your templates. ","href":"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/","autoload":true,"singular":true,"created":1483876368,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"MarkupPageFields":{"name":"MarkupPageFields","title":"Markup Page Fields","version":100,"versionStr":"1.0.0","summary":"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.","autoload":true,"singular":true,"created":1483876368,"installed":false,"namespace":"ProcessWire\\\\","core":true,"permanent":true},"MarkupRSS":{"name":"MarkupRSS","title":"Markup RSS Feed","version":102,"versionStr":"1.0.2","summary":"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.","created":1483876368,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"PageFrontEdit":{"name":"PageFrontEdit","title":"Front-End Page Editor","version":2,"versionStr":"0.0.2","author":"Ryan Cramer","summary":"Enables front-end editing of page fields.","icon":"cube","permissions":{"page-edit-front":"Use the front-end page editor"},"autoload":true,"created":1483876370,"installed":false,"configurable":"PageFrontEditConfig.php","namespace":"ProcessWire\\\\","core":true,"license":"MPL 2.0"},"PagePaths":{"name":"PagePaths","title":"Page Paths","version":1,"versionStr":"0.0.1","summary":"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site). Currently supports only single languages sites.","autoload":true,"singular":true,"created":1483876356,"installed":false,"namespace":"ProcessWire\\\\","core":true},"ProcessCommentsManager":{"name":"ProcessCommentsManager","title":"Comments","version":6,"versionStr":"0.0.6","author":"Ryan Cramer","summary":"Manage comments in your site outside of the page editor.","icon":"comments","requiresVersions":{"FieldtypeComments":[">=",0]},"permission":"comments-manager","permissions":{"comments-manager":"Use the comments manager"},"created":1483876370,"installed":false,"namespace":"ProcessWire\\\\","core":true,"page":{"name":"comments","parent":"setup","title":"Comments"},"nav":[{"url":"?go=approved","label":"Approved"},{"url":"?go=pending","label":"Pending"},{"url":"?go=spam","label":"Spam"},{"url":"?go=all","label":"All"}]},"ProcessForgotPassword":{"name":"ProcessForgotPassword","title":"Forgot Password","version":101,"versionStr":"1.0.1","summary":"Provides password reset\\/email capability for the Login process.","permission":"page-view","created":1483876370,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"ProcessPageClone":{"name":"ProcessPageClone","title":"Page Clone","version":103,"versionStr":"1.0.3","summary":"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.","permission":"page-clone","permissions":{"page-clone":"Clone a page","page-clone-tree":"Clone a tree of pages"},"autoload":"template=admin","created":1483876370,"installed":false,"namespace":"ProcessWire\\\\","core":true,"page":{"name":"clone","title":"Clone","parent":"page","status":1024}},"ProcessSessionDB":{"name":"ProcessSessionDB","title":"Sessions","version":3,"versionStr":"0.0.3","summary":"Enables you to browse active database sessions.","icon":"dashboard","requiresVersions":{"SessionHandlerDB":[">=",0]},"created":1483876371,"installed":false,"namespace":"ProcessWire\\\\","core":true},"SessionHandlerDB":{"name":"SessionHandlerDB","title":"Session Handler Database","version":5,"versionStr":"0.0.5","summary":"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.","installs":["ProcessSessionDB"],"created":1483876371,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"FieldtypeNotifications":{"name":"FieldtypeNotifications","title":"Notifications","version":4,"versionStr":"0.0.4","summary":"Field that stores user notifications.","requiresVersions":{"SystemNotifications":[">=",0]},"created":1483876371,"installed":false,"namespace":"ProcessWire\\\\","core":true},"SystemNotifications":{"name":"SystemNotifications","title":"System Notifications","version":12,"versionStr":"0.1.2","summary":"Adds support for notifications in ProcessWire (currently in development)","icon":"bell","installs":["FieldtypeNotifications"],"autoload":true,"created":1483876371,"installed":false,"configurable":"SystemNotificationsConfig.php","namespace":"ProcessWire\\\\","core":true},"TextformatterMarkdownExtra":{"name":"TextformatterMarkdownExtra","title":"Markdown\\/Parsedown Extra","version":130,"versionStr":"1.3.0","summary":"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.","created":1483876371,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"TextformatterNewlineBR":{"name":"TextformatterNewlineBR","title":"Newlines to XHTML Line Breaks","version":100,"versionStr":"1.0.0","summary":"Converts newlines to XHTML line break <br \\/> tags. ","created":1483876371,"installed":false,"namespace":"ProcessWire\\\\","core":true},"TextformatterNewlineUL":{"name":"TextformatterNewlineUL","title":"Newlines to Unordered List","version":100,"versionStr":"1.0.0","summary":"Converts newlines to <li> list items and surrounds in an <ul> unordered list. ","created":1483876371,"installed":false,"namespace":"ProcessWire\\\\","core":true},"TextformatterPstripper":{"name":"TextformatterPstripper","title":"Paragraph Stripper","version":100,"versionStr":"1.0.0","summary":"Strips paragraph <p> tags that may have been applied by other text formatters before it. ","created":1483876371,"installed":false,"namespace":"ProcessWire\\\\","core":true},"TextformatterSmartypants":{"name":"TextformatterSmartypants","title":"SmartyPants Typographer","version":171,"versionStr":"1.7.1","summary":"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.","created":1483876371,"installed":false,"configurable":4,"namespace":"ProcessWire\\\\","core":true,"url":"https:\\/\\/github.com\\/michelf\\/php-smartypants"},"TextformatterStripTags":{"name":"TextformatterStripTags","title":"Strip Markup Tags","version":100,"versionStr":"1.0.0","summary":"Strips HTML\\/XHTML Markup Tags","created":1483876371,"installed":false,"configurable":3,"namespace":"ProcessWire\\\\","core":true},"Helloworld":{"name":"Helloworld","title":"Hello World","version":3,"versionStr":"0.0.3","summary":"An example module used for demonstration purposes.","href":"https:\\/\\/processwire.com","icon":"smile-o","autoload":true,"singular":true,"created":1483876682,"installed":false}}', '2010-04-08 03:10:10'),
('Permissions.names', '{"logs-edit":1019,"logs-view":1018,"page-delete":34,"page-edit":32,"page-edit-recent":1016,"page-lister":1006,"page-lock":54,"page-move":35,"page-sort":50,"page-template":51,"page-view":36,"profile-edit":53,"user-admin":52}', '2010-04-08 03:10:10'),
('Modules.info', '{"148":{"name":"AdminThemeDefault","title":"Default","version":14,"autoload":"template=admin","created":1483876681,"configurable":19,"namespace":"ProcessWire\\\\"},"97":{"name":"FieldtypeCheckbox","title":"Checkbox","version":101,"singular":1,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"28":{"name":"FieldtypeDatetime","title":"Datetime","version":104,"created":1483876681,"namespace":"ProcessWire\\\\"},"29":{"name":"FieldtypeEmail","title":"E-Mail","version":100,"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\"},"106":{"name":"FieldtypeFieldsetClose","title":"Fieldset (Close)","version":100,"singular":1,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"105":{"name":"FieldtypeFieldsetOpen","title":"Fieldset (Open)","version":100,"singular":1,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"107":{"name":"FieldtypeFieldsetTabOpen","title":"Fieldset in Tab (Open)","version":100,"singular":1,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"6":{"name":"FieldtypeFile","title":"Files","version":104,"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"89":{"name":"FieldtypeFloat","title":"Float","version":105,"singular":1,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"57":{"name":"FieldtypeImage","title":"Images","version":101,"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"84":{"name":"FieldtypeInteger","title":"Integer","version":101,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"27":{"name":"FieldtypeModule","title":"Module Reference","version":101,"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"4":{"name":"FieldtypePage","title":"Page Reference","version":103,"autoload":true,"singular":true,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"111":{"name":"FieldtypePageTitle","title":"Page Title","version":100,"singular":1,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"133":{"name":"FieldtypePassword","title":"Password","version":101,"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"3":{"name":"FieldtypeText","title":"Text","version":100,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"1":{"name":"FieldtypeTextarea","title":"Textarea","version":106,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"135":{"name":"FieldtypeURL","title":"URL","version":101,"singular":1,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"25":{"name":"InputfieldAsmSelect","title":"asmSelect","version":120,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"131":{"name":"InputfieldButton","title":"Button","version":100,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"37":{"name":"InputfieldCheckbox","title":"Checkbox","version":104,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"38":{"name":"InputfieldCheckboxes","title":"Checkboxes","version":107,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"155":{"name":"InputfieldCKEditor","title":"CKEditor","version":157,"installs":["MarkupHTMLPurifier"],"created":1483876681,"namespace":"ProcessWire\\\\"},"94":{"name":"InputfieldDatetime","title":"Datetime","version":105,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"80":{"name":"InputfieldEmail","title":"Email","version":101,"created":1483876681,"namespace":"ProcessWire\\\\"},"78":{"name":"InputfieldFieldset","title":"Fieldset","version":101,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"55":{"name":"InputfieldFile","title":"Files","version":124,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"90":{"name":"InputfieldFloat","title":"Float","version":103,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"30":{"name":"InputfieldForm","title":"Form","version":107,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"40":{"name":"InputfieldHidden","title":"Hidden","version":101,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"170":{"name":"InputfieldIcon","title":"Icon","version":2,"created":1483876746,"namespace":"ProcessWire\\\\"},"56":{"name":"InputfieldImage","title":"Images","version":119,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"85":{"name":"InputfieldInteger","title":"Integer","version":104,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"79":{"name":"InputfieldMarkup","title":"Markup","version":102,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"41":{"name":"InputfieldName","title":"Name","version":100,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"60":{"name":"InputfieldPage","title":"Page","version":106,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"15":{"name":"InputfieldPageListSelect","title":"Page List Select","version":101,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"137":{"name":"InputfieldPageListSelectMultiple","title":"Page List Select Multiple","version":102,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"86":{"name":"InputfieldPageName","title":"Page Name","version":106,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"112":{"name":"InputfieldPageTitle","title":"Page Title","version":102,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"122":{"name":"InputfieldPassword","title":"Password","version":101,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"39":{"name":"InputfieldRadios","title":"Radio Buttons","version":105,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"36":{"name":"InputfieldSelect","title":"Select","version":102,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"43":{"name":"InputfieldSelectMultiple","title":"Select Multiple","version":101,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"149":{"name":"InputfieldSelector","title":"Selector","version":27,"autoload":"template=admin","created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","addFlag":32},"32":{"name":"InputfieldSubmit","title":"Submit","version":102,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"34":{"name":"InputfieldText","title":"Text","version":106,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"35":{"name":"InputfieldTextarea","title":"Textarea","version":103,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"108":{"name":"InputfieldURL","title":"URL","version":102,"created":1483876681,"namespace":"ProcessWire\\\\"},"116":{"name":"JqueryCore","title":"jQuery Core","version":183,"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"151":{"name":"JqueryMagnific","title":"jQuery Magnific Popup","version":1,"singular":1,"created":1483876681,"namespace":"ProcessWire\\\\"},"103":{"name":"JqueryTableSorter","title":"jQuery Table Sorter Plugin","version":221,"singular":1,"created":1483876681,"namespace":"ProcessWire\\\\"},"117":{"name":"JqueryUI","title":"jQuery UI","version":196,"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"45":{"name":"JqueryWireTabs","title":"jQuery Wire Tabs Plugin","version":107,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"163":{"name":"FieldtypePageTitleLanguage","title":"Page Title (Multi-Language)","version":100,"requiresVersions":{"LanguageSupportFields":[">=",0],"FieldtypeTextLanguage":[">=",0]},"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\"},"164":{"name":"FieldtypeTextareaLanguage","title":"Textarea (Multi-language)","version":100,"requiresVersions":{"LanguageSupportFields":[">=",0]},"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\"},"162":{"name":"FieldtypeTextLanguage","title":"Text (Multi-language)","version":100,"requiresVersions":{"LanguageSupportFields":[">=",0]},"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\"},"158":{"name":"LanguageSupport","title":"Languages Support","version":103,"installs":["ProcessLanguage","ProcessLanguageTranslator"],"autoload":true,"singular":true,"created":1483876681,"configurable":true,"namespace":"ProcessWire\\\\","addFlag":32},"161":{"name":"LanguageSupportFields","title":"Languages Support - Fields","version":100,"requiresVersions":{"LanguageSupport":[">=",0]},"installs":["FieldtypePageTitleLanguage","FieldtypeTextareaLanguage","FieldtypeTextLanguage"],"autoload":true,"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\"},"165":{"name":"LanguageSupportPageNames","title":"Languages Support - Page Names","version":9,"requiresVersions":{"LanguageSupport":[">=",0],"LanguageSupportFields":[">=",0]},"autoload":true,"singular":true,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\"},"166":{"name":"LanguageTabs","title":"Languages Support - Tabs","version":114,"requiresVersions":{"LanguageSupport":[">=",0]},"autoload":"template=admin","singular":true,"created":1483876681,"configurable":4,"namespace":"ProcessWire\\\\"},"159":{"name":"ProcessLanguage","title":"Languages","version":103,"icon":"language","requiresVersions":{"LanguageSupport":[">=",0]},"permission":"lang-edit","singular":1,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","useNavJSON":true},"160":{"name":"ProcessLanguageTranslator","title":"Language Translator","version":101,"requiresVersions":{"LanguageSupport":[">=",0]},"permission":"lang-edit","singular":1,"created":1483876681,"namespace":"ProcessWire\\\\"},"67":{"name":"MarkupAdminDataTable","title":"Admin Data Table","version":107,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"156":{"name":"MarkupHTMLPurifier","title":"HTML Purifier","version":105,"created":1483876681,"namespace":"ProcessWire\\\\"},"113":{"name":"MarkupPageArray","title":"PageArray Markup","version":100,"autoload":true,"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\"},"98":{"name":"MarkupPagerNav","title":"Pager (Pagination) Navigation","version":104,"created":1483876681,"namespace":"ProcessWire\\\\"},"152":{"name":"PagePathHistory","title":"Page Path History","version":2,"autoload":true,"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\"},"114":{"name":"PagePermissions","title":"Page Permissions","version":105,"autoload":true,"singular":true,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"115":{"name":"PageRender","title":"Page Render","version":105,"autoload":true,"singular":true,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"48":{"name":"ProcessField","title":"Fields","version":112,"icon":"cube","permission":"field-admin","created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true,"addFlag":32},"87":{"name":"ProcessHome","title":"Admin Home","version":101,"permission":"page-view","created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"76":{"name":"ProcessList","title":"List","version":101,"permission":"page-view","created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"169":{"name":"ProcessLogger","title":"Logs","version":1,"icon":"tree","permission":"logs-view","singular":1,"created":1483876746,"namespace":"ProcessWire\\\\","useNavJSON":true},"10":{"name":"ProcessLogin","title":"Login","version":103,"permission":"page-view","created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"50":{"name":"ProcessModule","title":"Modules","version":118,"permission":"module-admin","created":1483876681,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true,"nav":[{"url":"?site#tab_site_modules","label":"Site","icon":"plug","navJSON":"navJSON\\/?site=1"},{"url":"?core#tab_core_modules","label":"Core","icon":"plug","navJSON":"navJSON\\/?core=1"},{"url":"?configurable#tab_configurable_modules","label":"Configure","icon":"gear","navJSON":"navJSON\\/?configurable=1"},{"url":"?install#tab_install_modules","label":"Install","icon":"sign-in","navJSON":"navJSON\\/?install=1"},{"url":"?reset=1","label":"Refresh","icon":"refresh"}]},"17":{"name":"ProcessPageAdd","title":"Page Add","version":108,"icon":"plus-circle","permission":"page-edit","created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"7":{"name":"ProcessPageEdit","title":"Page Edit","version":108,"icon":"edit","permission":"page-edit","singular":1,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"129":{"name":"ProcessPageEditImageSelect","title":"Page Edit Image","version":120,"permission":"page-edit","singular":1,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"121":{"name":"ProcessPageEditLink","title":"Page Edit Link","version":108,"icon":"link","permission":"page-edit","singular":1,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"12":{"name":"ProcessPageList","title":"Page List","version":118,"icon":"sitemap","permission":"page-edit","created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"150":{"name":"ProcessPageLister","title":"Lister","version":24,"icon":"search","permission":"page-lister","created":1483876681,"configurable":true,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true,"addFlag":32},"104":{"name":"ProcessPageSearch","title":"Page Search","version":106,"permission":"page-edit","singular":1,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"14":{"name":"ProcessPageSort","title":"Page Sort and Move","version":100,"permission":"page-edit","created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"109":{"name":"ProcessPageTrash","title":"Page Trash","version":102,"singular":1,"created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"134":{"name":"ProcessPageType","title":"Page Type","version":101,"singular":1,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true,"addFlag":32},"83":{"name":"ProcessPageView","title":"Page View","version":104,"permission":"page-view","created":1483876681,"namespace":"ProcessWire\\\\","permanent":true},"136":{"name":"ProcessPermission","title":"Permissions","version":101,"icon":"gear","permission":"permission-admin","singular":1,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"138":{"name":"ProcessProfile","title":"User Profile","version":103,"permission":"profile-edit","singular":1,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"168":{"name":"ProcessRecentPages","title":"Recent Pages","version":2,"icon":"clock-o","permission":"page-edit-recent","singular":1,"created":1483876722,"namespace":"ProcessWire\\\\","useNavJSON":true,"nav":[{"url":"?edited=1","label":"Edited","icon":"users","navJSON":"navJSON\\/?edited=1"},{"url":"?added=1","label":"Created","icon":"users","navJSON":"navJSON\\/?added=1&me=1"},{"url":"?edited=1&me=1","label":"Edited by me","icon":"user","navJSON":"navJSON\\/?edited=1&me=1"},{"url":"?added=1&me=1","label":"Created by me","icon":"user","navJSON":"navJSON\\/?added=1&me=1"},{"url":"another\\/","label":"Add another","icon":"plus-circle","navJSON":"anotherNavJSON\\/"}]},"68":{"name":"ProcessRole","title":"Roles","version":103,"icon":"gears","permission":"role-admin","created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"47":{"name":"ProcessTemplate","title":"Templates","version":114,"icon":"cubes","permission":"template-admin","created":1483876681,"namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"66":{"name":"ProcessUser","title":"Users","version":107,"icon":"group","permission":"user-admin","created":1483876681,"configurable":"ProcessUserConfig.php","namespace":"ProcessWire\\\\","permanent":true,"useNavJSON":true},"125":{"name":"SessionLoginThrottle","title":"Session Login Throttle","version":102,"autoload":"function","singular":true,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\"},"139":{"name":"SystemUpdater","title":"System Updater","version":15,"singular":true,"created":1483876681,"configurable":3,"namespace":"ProcessWire\\\\","permanent":true},"61":{"name":"TextformatterEntities","title":"HTML Entity Encoder (htmlspecialchars)","version":100,"created":1483876681,"namespace":"ProcessWire\\\\"}}', '2010-04-08 03:10:10'),
('ModulesVerbose.info', '{"148":{"summary":"Minimal admin theme that supports all ProcessWire features.","core":true,"versionStr":"0.1.4"},"97":{"summary":"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.","core":true,"versionStr":"1.0.1"},"28":{"summary":"Field that stores a date and optionally time","core":true,"versionStr":"1.0.4"},"29":{"summary":"Field that stores an e-mail address","core":true,"versionStr":"1.0.0"},"106":{"summary":"Close a fieldset opened by FieldsetOpen. ","core":true,"versionStr":"1.0.0"},"105":{"summary":"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.","core":true,"versionStr":"1.0.0"},"107":{"summary":"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.","core":true,"versionStr":"1.0.0"},"6":{"summary":"Field that stores one or more files","core":true,"versionStr":"1.0.4"},"89":{"summary":"Field that stores a floating point (decimal) number","core":true,"versionStr":"1.0.5"},"57":{"summary":"Field that stores one or more GIF, JPG, or PNG images","core":true,"versionStr":"1.0.1"},"84":{"summary":"Field that stores an integer","core":true,"versionStr":"1.0.1"},"27":{"summary":"Field that stores a reference to another module","core":true,"versionStr":"1.0.1"},"4":{"summary":"Field that stores one or more references to ProcessWire pages","core":true,"versionStr":"1.0.3"},"111":{"summary":"Field that stores a page title","core":true,"versionStr":"1.0.0"},"133":{"summary":"Field that stores a hashed and salted password","core":true,"versionStr":"1.0.1"},"3":{"summary":"Field that stores a single line of text","core":true,"versionStr":"1.0.0"},"1":{"summary":"Field that stores multiple lines of text","core":true,"versionStr":"1.0.6"},"135":{"summary":"Field that stores a URL","core":true,"versionStr":"1.0.1"},"25":{"summary":"Multiple selection, progressive enhancement to select multiple","core":true,"versionStr":"1.2.0"},"131":{"summary":"Form button element that you can optionally pass an href attribute to.","core":true,"versionStr":"1.0.0"},"37":{"summary":"Single checkbox toggle","core":true,"versionStr":"1.0.4"},"38":{"summary":"Multiple checkbox toggles","core":true,"versionStr":"1.0.7"},"155":{"summary":"CKEditor textarea rich text editor.","core":true,"versionStr":"1.5.7"},"94":{"summary":"Inputfield that accepts date and optionally time","core":true,"versionStr":"1.0.5"},"80":{"summary":"E-Mail address in valid format","core":true,"versionStr":"1.0.1"},"78":{"summary":"Groups one or more fields together in a container","core":true,"versionStr":"1.0.1"},"55":{"summary":"One or more file uploads (sortable)","core":true,"versionStr":"1.2.4"},"90":{"summary":"Floating point number with precision","core":true,"versionStr":"1.0.3"},"30":{"summary":"Contains one or more fields in a form","core":true,"versionStr":"1.0.7"},"40":{"summary":"Hidden value in a form","core":true,"versionStr":"1.0.1"},"170":{"summary":"Select an icon","core":true,"versionStr":"0.0.2"},"56":{"summary":"One or more image uploads (sortable)","core":true,"versionStr":"1.1.9"},"85":{"summary":"Integer (positive or negative)","core":true,"versionStr":"1.0.4"},"79":{"summary":"Contains any other markup and optionally child Inputfields","core":true,"versionStr":"1.0.2"},"41":{"summary":"Text input validated as a ProcessWire name field","core":true,"versionStr":"1.0.0"},"60":{"summary":"Select one or more pages","core":true,"versionStr":"1.0.6"},"15":{"summary":"Selection of a single page from a ProcessWire page tree list","core":true,"versionStr":"1.0.1"},"137":{"summary":"Selection of multiple pages from a ProcessWire page tree list","core":true,"versionStr":"1.0.2"},"86":{"summary":"Text input validated as a ProcessWire Page name field","core":true,"versionStr":"1.0.6"},"112":{"summary":"Handles input of Page Title and auto-generation of Page Name (when name is blank)","core":true,"versionStr":"1.0.2"},"122":{"summary":"Password input with confirmation field that doesn&#039;t ever echo the input back.","core":true,"versionStr":"1.0.1"},"39":{"summary":"Radio buttons for selection of a single item","core":true,"versionStr":"1.0.5"},"36":{"summary":"Selection of a single value from a select pulldown","core":true,"versionStr":"1.0.2"},"43":{"summary":"Select multiple items from a list","core":true,"versionStr":"1.0.1"},"149":{"summary":"Build a page finding selector visually.","author":"Avoine + ProcessWire","core":true,"versionStr":"0.2.7"},"32":{"summary":"Form submit button","core":true,"versionStr":"1.0.2"},"34":{"summary":"Single line of text","core":true,"versionStr":"1.0.6"},"35":{"summary":"Multiple lines of text","core":true,"versionStr":"1.0.3"},"108":{"summary":"URL in valid format","core":true,"versionStr":"1.0.2"},"116":{"summary":"jQuery Core as required by ProcessWire Admin and plugins","href":"http:\\/\\/jquery.com","core":true,"versionStr":"1.8.3"},"151":{"summary":"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.","href":"http:\\/\\/dimsemenov.com\\/plugins\\/magnific-popup\\/","core":true,"versionStr":"0.0.1"},"103":{"summary":"Provides a jQuery plugin for sorting tables.","href":"http:\\/\\/mottie.github.io\\/tablesorter\\/","core":true,"versionStr":"2.2.1"},"117":{"summary":"jQuery UI as required by ProcessWire and plugins","href":"http:\\/\\/ui.jquery.com","core":true,"versionStr":"1.9.6"},"45":{"summary":"Provides a jQuery plugin for generating tabs in ProcessWire.","core":true,"versionStr":"1.0.7"},"163":{"summary":"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. ","author":"Ryan Cramer","core":true,"versionStr":"1.0.0"},"164":{"summary":"Field that stores a multiple lines of text in multiple languages","core":true,"versionStr":"1.0.0"},"162":{"summary":"Field that stores a single line of text in multiple languages","core":true,"versionStr":"1.0.0"},"158":{"summary":"ProcessWire multi-language support.","author":"Ryan Cramer","core":true,"versionStr":"1.0.3"},"161":{"summary":"Required to use multi-language fields.","author":"Ryan Cramer","core":true,"versionStr":"1.0.0"},"165":{"summary":"Required to use multi-language page names.","author":"Ryan Cramer","core":true,"versionStr":"0.0.9"},"166":{"summary":"Organizes multi-language fields into tabs for a cleaner easier to use interface.","author":"adamspruijt, ryan","core":true,"versionStr":"1.1.4"},"159":{"summary":"Manage system languages","author":"Ryan Cramer","core":true,"versionStr":"1.0.3","permissions":{"lang-edit":"Administer languages and static translation files"}},"160":{"summary":"Provides language translation capabilities for ProcessWire core and modules.","author":"Ryan Cramer","core":true,"versionStr":"1.0.1"},"67":{"summary":"Generates markup for data tables used by ProcessWire admin","core":true,"versionStr":"1.0.7"},"156":{"summary":"Front-end to the HTML Purifier library.","core":true,"versionStr":"1.0.5"},"113":{"summary":"Adds a render() method to all PageArray instances for basic unordered list generation of PageArrays.","core":true,"versionStr":"1.0.0"},"98":{"summary":"Generates markup for pagination navigation","core":true,"versionStr":"1.0.4"},"152":{"summary":"Keeps track of past URLs where pages have lived and automatically redirects (301 permament) to the new location whenever the past URL is accessed.","core":true,"versionStr":"0.0.2"},"114":{"summary":"Adds various permission methods to Page objects that are used by Process modules.","core":true,"versionStr":"1.0.5"},"115":{"summary":"Adds a render method to Page and caches page output.","core":true,"versionStr":"1.0.5"},"48":{"summary":"Edit individual fields that hold page data","core":true,"versionStr":"1.1.2"},"87":{"summary":"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.","core":true,"versionStr":"1.0.1"},"76":{"summary":"Lists the Process assigned to each child page of the current","core":true,"versionStr":"1.0.1"},"169":{"summary":"View and manage system logs.","author":"Ryan Cramer","core":true,"versionStr":"0.0.1","permissions":{"logs-view":"Can view system logs","logs-edit":"Can manage system logs"},"page":{"name":"logs","parent":"setup","title":"Logs"}},"10":{"summary":"Login to ProcessWire","core":true,"versionStr":"1.0.3"},"50":{"summary":"List, edit or install\\/uninstall modules","core":true,"versionStr":"1.1.8"},"17":{"summary":"Add a new page","core":true,"versionStr":"1.0.8"},"7":{"summary":"Edit a Page","core":true,"versionStr":"1.0.8"},"129":{"summary":"Provides image manipulation functions for image fields and rich text editors.","core":true,"versionStr":"1.2.0"},"121":{"summary":"Provides a link capability as used by some Fieldtype modules (like rich text editors).","core":true,"versionStr":"1.0.8"},"12":{"summary":"List pages in a hierarchal tree structure","core":true,"versionStr":"1.1.8"},"150":{"summary":"Admin tool for finding and listing pages by any property.","author":"Ryan Cramer","core":true,"versionStr":"0.2.4","permissions":{"page-lister":"Use Page Lister"}},"104":{"summary":"Provides a page search engine for admin use.","core":true,"versionStr":"1.0.6"},"14":{"summary":"Handles page sorting and moving for PageList","core":true,"versionStr":"1.0.0"},"109":{"summary":"Handles emptying of Page trash","core":true,"versionStr":"1.0.2"},"134":{"summary":"List, Edit and Add pages of a specific type","core":true,"versionStr":"1.0.1"},"83":{"summary":"All page views are routed through this Process","core":true,"versionStr":"1.0.4"},"136":{"summary":"Manage system permissions","core":true,"versionStr":"1.0.1"},"138":{"summary":"Enables user to change their password, email address and other settings that you define.","core":true,"versionStr":"1.0.3"},"168":{"summary":"Shows a list of recently edited pages in your admin.","author":"Ryan Cramer","href":"http:\\/\\/modules.processwire.com\\/","core":true,"versionStr":"0.0.2","permissions":{"page-edit-recent":"Can see recently edited pages"},"page":{"name":"recent-pages","parent":"page","title":"Recent"}},"68":{"summary":"Manage user roles and what permissions are attached","core":true,"versionStr":"1.0.3"},"47":{"summary":"List and edit the templates that control page output","core":true,"versionStr":"1.1.4"},"66":{"summary":"Manage system users","core":true,"versionStr":"1.0.7"},"125":{"summary":"Throttles the frequency of logins for a given account, helps to reduce dictionary attacks by introducing an exponential delay between logins.","core":true,"versionStr":"1.0.2"},"139":{"summary":"Manages system versions and upgrades.","core":true,"versionStr":"0.1.5"},"61":{"summary":"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.","core":true,"versionStr":"1.0.0"}}', '2010-04-08 03:10:10'),
('Modules.site/modules/', 'Helloworld/Helloworld.module', '2010-04-08 03:10:10'),
('FileCompiler__e51c320972b4758ab94809c33246ffc8', '{"source":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/templates\\/admin.php","hash":"9636f854995462a4cb877cb1204bc2fe","size":467,"time":1483876354,"ns":"ProcessWire"},"target":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php","hash":"9636f854995462a4cb877cb1204bc2fe","size":467,"time":1483876354}}', '2010-04-08 03:10:10'),
('FileCompiler__66c786ccceb474baf43dd79f8298f4e8', '{"source":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/templates\\/_init.php","hash":"378297a5fcaf6d01f6beb484395b7d3e","size":1099,"time":1484316899,"ns":"ProcessWire"},"target":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/_init.php","hash":"378297a5fcaf6d01f6beb484395b7d3e","size":1099,"time":1484316899}}', '2010-04-08 03:10:10'),
('FileCompiler__ac553497da622a11a904ea6e14dbca91', '{"source":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/templates\\/_main.php","hash":"0826d2ae5d53aea3e78f632d2bf1ab39","size":14733,"time":1484656450,"ns":"ProcessWire"},"target":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/_main.php","hash":"0826d2ae5d53aea3e78f632d2bf1ab39","size":14733,"time":1484656450}}', '2010-04-08 03:10:10'),
('FileCompiler__0a94f0126db272a534619209e6b26b8d', '{"source":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/templates\\/home.php","hash":"5803dd45130e242a0b17600307b87e81","size":26588,"time":1484803673,"ns":"ProcessWire"},"target":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php","hash":"5803dd45130e242a0b17600307b87e81","size":26588,"time":1484803673}}', '2010-04-08 03:10:10'),
('FileCompiler__84a67384f6321247016152fbfdd206b3', '{"source":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/templates\\/basic-page.php","hash":"c69996c37d1069f814857427c215fbfd","size":873,"time":1484802196,"ns":"ProcessWire"},"target":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/basic-page.php","hash":"c69996c37d1069f814857427c215fbfd","size":873,"time":1484802196}}', '2010-04-08 03:10:10'),
('FileCompiler__a1f623e95ced7a12546c6cf18cf12ece', '{"source":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/templates\\/sitemap.php","hash":"079ca61d342c06c26abe72f900d8e5dc","size":232,"time":1483876354,"ns":"ProcessWire"},"target":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/sitemap.php","hash":"079ca61d342c06c26abe72f900d8e5dc","size":232,"time":1483876354}}', '2010-04-08 03:10:10'),
('FileCompiler__3f1d5f8ce48b5f9bc5f6645d93a0a954', '{"source":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/templates\\/blog.php","hash":"d026530a822b2f5d899bad21811ab765","size":574,"time":1484657035,"ns":"ProcessWire"},"target":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/blog.php","hash":"d026530a822b2f5d899bad21811ab765","size":574,"time":1484657035}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES
('FileCompiler__ac88b8e180ed7b50cce5e840d06f9406', '{"source":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/templates\\/post.php","hash":"6278b0e5fe341eae029b0d7412ef9b55","size":1228,"time":1484396864,"ns":"ProcessWire"},"target":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/post.php","hash":"6278b0e5fe341eae029b0d7412ef9b55","size":1228,"time":1484396864}}', '2010-04-08 03:10:10'),
('FileCompiler__507eecc6786c5f7a735098d039c44198', '{"source":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/templates\\/contact.php","hash":"e5355b866b8df84dd752de5487844186","size":1501,"time":1484466422,"ns":"\\\\"},"target":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/contact.php","hash":"e5355b866b8df84dd752de5487844186","size":1501,"time":1484466422}}', '2010-04-08 03:10:10'),
('FileCompiler__9df3dba67a7d9bf8438d9c35b7980593', '{"source":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/templates\\/search.php","hash":"d22259d2e2dcc9ffb6e99b0cfcfb6756","size":3042,"time":1484804496,"ns":"ProcessWire"},"target":{"file":"C:\\/xampp\\/htdocs\\/blog\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/search.php","hash":"d22259d2e2dcc9ffb6e99b0cfcfb6756","size":3042,"time":1484804496}}', '2010-04-08 03:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`) VALUES
(2, 'admin'),
(3, 'user'),
(4, 'role'),
(5, 'permission'),
(1, 'home'),
(101, 'work-experience'),
(83, 'basic-page'),
(80, 'search'),
(97, 'language'),
(98, 'blog'),
(99, 'post'),
(100, 'contact'),
(102, 'skills');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups_fields`
--

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fields_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldgroups_fields`
--

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES
(2, 2, 1, NULL),
(2, 1, 0, NULL),
(3, 4, 3, NULL),
(3, 92, 2, NULL),
(4, 5, 0, NULL),
(5, 1, 0, NULL),
(3, 3, 1, NULL),
(1, 76, 3, NULL),
(80, 1, 0, NULL),
(101, 76, 3, NULL),
(1, 44, 4, NULL),
(1, 78, 1, NULL),
(98, 109, 1, NULL),
(83, 44, 3, NULL),
(83, 76, 2, NULL),
(97, 100, 1, NULL),
(3, 1, 0, NULL),
(1, 1, 0, NULL),
(97, 97, 2, NULL),
(97, 1, 0, NULL),
(1, 108, 5, NULL),
(1, 79, 2, NULL),
(98, 1, 0, NULL),
(99, 106, 5, NULL),
(99, 44, 1, NULL),
(99, 107, 2, NULL),
(99, 79, 3, NULL),
(99, 76, 4, NULL),
(99, 1, 0, NULL),
(3, 98, 4, NULL),
(101, 1, 1, NULL),
(100, 1, 0, NULL),
(100, 92, 1, NULL),
(100, 76, 2, NULL),
(83, 1, 0, NULL),
(83, 79, 1, NULL),
(101, 110, 2, NULL),
(101, 78, 0, '{"collapsed":"0","description":"The time frame in which this experience was gained."}'),
(102, 109, 1, NULL),
(102, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES
(1, 'FieldtypePageTitleLanguage', 'title', 13, 'Title', '{"required":1,"textformatters":["TextformatterEntities"],"size":0,"maxlength":255,"label1012":"Titel","langBlankInherit":0}'),
(2, 'FieldtypeModule', 'process', 25, 'Process', '{"description":"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don''t change the value of this unless adding your own pages in the admin.","collapsed":1,"required":1,"moduleTypes":["Process"],"permanent":1}'),
(3, 'FieldtypePassword', 'pass', 24, 'Set Password', '{"collapsed":1,"size":50,"maxlength":128}'),
(5, 'FieldtypePage', 'permissions', 24, 'Permissions', '{"derefAsPage":0,"parent_id":31,"labelFieldName":"title","inputfield":"InputfieldCheckboxes"}'),
(4, 'FieldtypePage', 'roles', 24, 'Roles', '{"derefAsPage":0,"parent_id":30,"labelFieldName":"name","inputfield":"InputfieldCheckboxes","description":"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page''s template."}'),
(92, 'FieldtypeEmail', 'email', 9, 'E-Mail Address', '{"size":70,"maxlength":255}'),
(110, 'FieldtypeTextLanguage', 'subtitle', 0, 'Subtitle', ''),
(44, 'FieldtypeImage', 'images', 0, 'Images', '{"extensions":"gif jpg jpeg png","adminThumbs":1,"inputfieldClass":"InputfieldImage","maxFiles":0,"descriptionRows":1,"fileSchema":2,"outputFormat":1,"defaultValuePage":0,"defaultGrid":0,"icon":"camera","label1012":"Bilder","textformatters":["TextformatterEntities"]}'),
(79, 'FieldtypeTextareaLanguage', 'summary', 1, 'Summary', '{"textformatters":["TextformatterEntities"],"inputfieldClass":"InputfieldTextarea","collapsed":2,"rows":3,"contentType":0,"label1012":"Zusammenfassung","langBlankInherit":0}'),
(76, 'FieldtypeTextareaLanguage', 'body', 0, 'Body', '{"inputfieldClass":"InputfieldCKEditor","rows":10,"contentType":1,"toolbar":"Format, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog","inlineMode":0,"useACF":0,"usePurifier":1,"formatTags":"p;h2;h3;h4;h5;h6;pre;address","extraPlugins":["pwimage","pwlink","sourcedialog"],"removePlugins":"image,magicline","toggles":[2,4,8],"label1012":"Inhalt","langBlankInherit":0,"collapsed":0,"minlength":0,"maxlength":0,"showCount":0}'),
(78, 'FieldtypeTextLanguage', 'headline', 0, 'Headline', '{"description":"Use this instead of the field above if more text is needed for the page than for the navigation. ","textformatters":["TextformatterEntities"],"collapsed":2,"size":0,"maxlength":1024,"langBlankInherit":1,"label1012":"\\u00dcberschrift","description1012":"Verwenden Sie diese statt dem obigen Feld, wenn mehr Text f\\u00fcr die Seite als f\\u00fcr die Navigation ben\\u00f6tigt wird.j"}'),
(109, 'FieldtypeInteger', 'quantity', 0, 'Quantity', ''),
(97, 'FieldtypeFile', 'language_files', 24, 'Core Translation Files', '{"extensions":"json csv","maxFiles":0,"inputfieldClass":"InputfieldFile","unzip":1,"descriptionRows":0,"fileSchema":2,"outputFormat":0,"defaultValuePage":0,"clone_field":1,"description":"Use this for field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save."}'),
(98, 'FieldtypePage', 'language', 24, 'Language', '{"derefAsPage":1,"parent_id":1009,"labelFieldName":"title","inputfield":"InputfieldRadios","required":1}'),
(100, 'FieldtypeFile', 'language_files_site', 24, 'Site Translation Files', '{"description":"Use this for field for translations specific to your site (like files in \\/site\\/templates\\/ for example).","extensions":"json csv","maxFiles":0,"inputfieldClass":"InputfieldFile","unzip":1,"descriptionRows":0,"fileSchema":2}'),
(106, 'FieldtypePage', 'tags', 0, 'Tags', '{"derefAsPage":0,"collapsed":0,"parent_id":1022,"labelFieldName":"title","inputfield":"InputfieldAsmSelect","usePageEdit":0}'),
(107, 'FieldtypeDatetime', 'date', 0, 'Date', '{"collapsed":0,"size":25,"datepicker":3,"timeInputSelect":0,"dateInputFormat":"Y-m-d","defaultToday":1}'),
(108, 'FieldtypeDatetime', 'vacation', 0, 'End date of vacation', '{"collapsed":0,"size":25,"datepicker":3,"timeInputSelect":0,"dateInputFormat":"Y-m-d"}');

-- --------------------------------------------------------

--
-- Table structure for table `field_body`
--

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_body`
--

INSERT INTO `field_body` (`pages_id`, `data`, `data1012`) VALUES
(27, '<h3>The page you were looking for is not found.</h3>\n\n<p>Please use the search engine or navigation above to find the page.</p>', '<h3>Die Seite, die Sie suchen, wurde nicht gefunden.</h3>\n\n<p>Bitte verwenden Sie die Suchmaschine oder die Navigation oben, um die Seite zu finden.</p>'),
(1, '', ''),
(1001, '<p><strong>Angaben gemäß § 5 TMG</strong></p>\n\n<p>Sascha Gros<br />\nTrettachstraße 1<br />\n70327 Stuttgart</p>\n\n<p><strong>Kontakt:</strong><br />\nTelefon: +49 178 8171987<br />\nE-Mail: info@gros-engineering.com</p>\n\n<p>Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV:<br />\nSascha Gros</p>\n\n<h2>Haftungsausschluss</h2>\n\n<p><strong>Haftung für Inhalte</strong></p>\n\n<p>Die Inhalte unserer Seiten wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.</p>\n\n<p><strong>Haftung für Links</strong></p>\n\n<p>Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.</p>\n\n<h3>Urheberrecht</h3>\n\n<p>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.</p>\n\n<h3>Datenschutz</h3>\n\n<p>Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben.<br />\nWir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.<br />\nDer Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\n\n<p><em>Website Impressum erstellt durch <a href="http://www.impressum-generator.de/">impressum-generator.de</a> der <a href="http://www.kanzlei-hasselbach.de/">Kanzlei Hasselbach</a>.</em></p>', '<p><strong>Angaben gemäß § 5 TMG</strong></p>\n\n<p>Sascha Gros<br />\nTrettachstraße 1<br />\n70327 Stuttgart</p>\n\n<p><strong>Kontakt:</strong><br />\nTelefon: +49 178 8171987<br />\nE-Mail: info@gros-engineering.com</p>\n\n<p>Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV:<br />\nSascha Gros</p>\n\n<h2>Haftungsausschluss</h2>\n\n<p><strong>Haftung für Inhalte</strong></p>\n\n<p>Die Inhalte unserer Seiten wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.</p>\n\n<p><strong>Haftung für Links</strong></p>\n\n<p>Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.</p>\n\n<h3>Urheberrecht</h3>\n\n<p>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.</p>\n\n<h3>Datenschutz</h3>\n\n<p>Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben.<br />\nWir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.<br />\nDer Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\n\n<p><em>Website Impressum erstellt durch <a href="http://www.impressum-generator.de/">impressum-generator.de</a> der <a href="http://www.kanzlei-hasselbach.de/">Kanzlei Hasselbach</a>.</em></p>'),
(1024, '', ''),
(1022, '', ''),
(1023, '', ''),
(1032, '<p>REST APIs are a central part of the Internet. They allow to use, aggregate or extend other web services and thereby building up new user-facing services in virtually no time.</p>\n\n<p>The tendency to mobile apps accelerated the creation of REST APIs even more, since it isn''t enough anymore to only deliver content and data within a website but it is essential to also integrate this data into mobile applications running on different platforms like iOS, Android or Windows Phone.</p>\n\n<p>This post will be the starting point of a series of posts describing the technical aspects of a REST API design covering different technologies like Node.js, Swagger and a Javascript front end framework of your choice.</p>\n\n<h2>Why all this?</h2>\n\n<p>Why do we explicitly write about REST API design at all? We could just define some routes, implement them in the API backend, write some documentation and then use them in the front end part of the application. Easy. That''s the way I did it before. And it worked. Until I made some changes in the back end implementation that had to be reflected in the front end. And in the documentation. Which wasn''t. Which made the front end guys go crazy, because it broke their app. Which made me crazy, because I told them about the change and I could not know, that they didn''t pass on the message. By the way, what did I actually change in the API some days back? Alright, let''s do the API design like real professionals.</p>\n\n<h2>Let''s create some documentation!</h2>\n\n<p>Everything starts with API documentation. You should really first think about your API thoroughly before you start writing any piece of code. This documentation will be the foundation of your whole API. If you have to change something, change it in the documentation and let it then reflect in the code. Don''t do it the other way round. I know it might be easier for now to just code it, but it will pay out to go the extra mile with the documentation.</p>\n\n<p>The tool of my choice to do API documentation is called <a href="http://swagger.io/">Swagger</a>. You could use Swagger to do your API documentation only, but to make the best of it, you should use the Swagger documentation as foundation for developing the actual API. And for semi-automatically creating the mocks for your front end. Uh yeah, can you feel the excitement?</p>\n\n<h3>The Swagger eco-system</h3>\n\n<p><strong>Swagger Editor</strong><br />\nTo get a feeling for Swagger and to do some first steps, there is the <a href="http://petstore.swagger.io/">Pet Store Example</a> publicly available to browse an API definition written in the Swagger editor. To get a first insight into the Swagger definition file, the <a href="http://editor.swagger.io/#/">Swagger Editor</a> is available with the Uber example to help you understand the basics of the Swagger language.</p>\n\n<p><strong>Swagger YAML File</strong><br />\nEverything is build around the Swagger YAML file that you could see, if you had a look at the live example of the Editor. Apart from a general configuration area at the top of the file there are two important parts in there: <em>paths</em> and <em>definitions</em>.</p>\n\n<p><strong>Swagger routes alias paths</strong><br />\nThe paths section of the Swagger definition file contains all routes that are available in your API. Let''s say you want to offer a list of camels and details for each camel in that list. You would have two routes.</p>\n\n<pre>\n<code>/camels/\n/camels/:id\n</code></pre>\n\n<p>For each route you have to specify which kind of HTTP requests the route supports. For the <code>/camels/:id</code> route you could specify a GET request as follows.</p>\n\n<pre>\n<code>/camels/{id}:\n  get:\n    summary: Retrieve camel with given id.\n    description: |\n      With this route you can retrieve one specific camel.\n    tags:\n      - Camels\n    parameters:\n      - name: id\n        description: Identifier for the camel\n        in: path\n        required: true\n        type: number\n    responses:\n      200:\n        description: The camel\n        schema:\n          $ref: ''#/definitions/Camel''\n</code></pre>\n\n<p>When you send a get request to <code>/camels/1</code> you would retrieve your camel with id=1. Straightforward, isn''t it?</p>\n\n<p><strong>Swagger type definitions</strong><br />\nType definitions are what they say they are: type definitions. So you could define the camel type from the previous example as:</p>\n\n<pre>\n<code>Camel:  \n  type: object\n  description: The famous camel object.\n  properties:\n    id:\n      description: Unique identifier for the camel object.\n      type: number\n    name:\n      description: Name of the camel.\n      type: string\n    color:\n      description: Color scheme of the camel.\n      type: string\n  required:\n    - id\n    - name\n</code></pre>\n\n<p>So a call to <code>/camels/1</code> would return for example:</p>\n\n<pre>\n<code>{\n  "id": 1,\n  "name": "Carlos",\n  "color": "Autumn Gold"\n}</code></pre>\n\n<p>You can get more information on how to write paths and definitions in the following links:</p>\n\n<ul><li><a href="http://swagger.io/">Swagger.io Homepage</a></li>\n	<li><a href="https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md">Open API Specification</a></li>\n</ul><h3>What is up next?</h3>\n\n<p>In the next post of this series we will dive into the back end integration of Swagger and how we can leverage the Swagger eco-system to build our API in a best practice manner.</p>\n\n<p>We will also see, how we can extract Swagger definitions out of our Typescript types and how we could integrate all that in our build process with Gulp.js.</p>\n\n<p>Stay tuned!</p>', ''),
(1026, '<p>Thank you, your request was sent and will be answered within the next 3 days.</p>', '<p>Vielen Dank für die Anfrage. Sie erhalten innerhalb der nächsten drei Tage eine Antwort von mir.</p>'),
(1027, '<p>Hackathons are crazy. Get there on Friday, meet a lot of different people from all over and think about ideas that could be moulded into a prototype within less than two days. And one night.</p>\n\n<p>I took the challenge and arrived in Berlin on the early evening of a cold Friday in March. Struggling to figure out where to go for the hackathon I met Alessio from Italy who was out there for the same challenge (I''m talking about the challenge to find the meeting spot). Only minutes later we ran into Oleg from Ukraine and told him about our ambitious plans (to find the meeting spot). He told us, that he was invited by Damian from Argentina who also will come to the event starting tonight. Our team for the next two days has formed.</p>\n\n<p>After introductory words from <a href="http://www.tnooz.com/author/efquinn777/">Gene Quinn</a> the brainstorming dragged on for a couple of minutes before Alessio told us about his tragic situation: being from Italy, living in Berlin (that alone brings in some tragic) and having a girlfriend from Estonia who is living in Budapest.</p>\n\n<p><strong>We are on a mission!</strong></p>\n\n<p>We will change the life of those guys forever! No lovers must endure the time of separation any longer. We have three options:</p>\n\n<ol><li>\n	<p><strong>Invent teleportation.</strong> This could be hard to do in those two days, since it will be hard to get all parts delivered in time (it''s weekend and we could not find the proper parts on Amazon for next day delivery).</p>\n	</li>\n	<li>\n	<p><strong>High-speed tunnels.</strong> From Berlin to Budapest. Cool, here we go. But wait: how can we scale that business model? We could build tunnels from every town to every town. In two days? Too hard, especially when you think about building tunnels to overseas.</p>\n	</li>\n	<li>\n	<p><strong>Find best places to meet.</strong> Alessio can fly from Berlin. Nele can fly from Budapest. They can meet up in between. We optimise flight times and budget. They have as much time together as possible. That''s it. We will make the world a better place. But first get some sleep.</p>\n	</li>\n</ol><h2>Let the games begin</h2>\n\n<p>Have you seen <em>Hunger Games</em> ? Then you know what the above statement implies: The air is fraught with tension. Concentration is everywhere.</p>\n\n<p>And then it begins. Planning. Developing. Cursing. Bug fixing. Re-planning. Despairing. Developing.</p>\n\n<p>After roughly 25 hours of intense collaboration we have a result. And we love it.</p>\n\n<p>Open the app, authenticate with Facebook, add your friends you want to visit, add their locations and be ready to get the best city to meet for a weekend. Optimised for the time you spend together and the budget you spend.</p>\n\n<p>Sit back and enjoy the impressions.</p>\n\n<p><img alt=""	src="/site/assets/files/1027/start_screen.310x0-is.jpg" width="310" /></p>\n\n<p><img alt=""	src="/site/assets/files/1027/friend_list.310x0-is.jpg" width="310" /></p>\n\n<p><a	href="/site/assets/files/1027/results.jpg"><img alt=""	src="/site/assets/files/1027/results.310x0-is.jpg" width="310" /></a></p>\n\n<p><img alt=""	src="/site/assets/files/1027/result_details-2.310x0-is.jpg" width="310" /></p>\n\n<p><img alt=""	src="/site/assets/files/1027/result_details_hotel.310x0-is.jpg" width="310" /></p>\n\n<h2>Technologies</h2>\n\n<ul><li>Node.js with Express.js in the back end</li>\n	<li>Angular.js for the front end</li>\n</ul><h2>APIs</h2>\n\n<ul><li><a href="http://www.skyscanner.com/">SkyScanner API</a></li>\n	<li><a href="https://www.homeaway.com/">HomeAway API</a></li>\n	<li><a href="http://www.xapix.io/">Xapix</a></li>\n</ul>', ''),
(1028, '', ''),
(1029, '', ''),
(1030, '', ''),
(1031, '', ''),
(1033, '', ''),
(1034, '<p>In the <a href="http://www.gros-engineering.com/how-to-design-the-perfect-rest-api-part-1/">last post of this series</a> we had a brief introduction into Swagger and the principles of RESTful API design. This post will dive into the technical details of a <a href="http://swagger.io/">Swagger</a> integration into the development process of our API back end. I will assume, that you know the basics of <a href="https://nodejs.org/en/about/">Node.js</a> and how to use the Node.js package manager npm.</p>\n\n<p>To use the ideas and concepts of that blog post for your own project, I would recommend to have a closer look at these two npm packages:</p>\n\n<ul><li><a href="https://www.npmjs.com/package/swagger-node-runner">Swagger Node Runner</a></li>\n	<li><a href="https://www.npmjs.com/package/typson">Typson</a></li>\n</ul><h2 id="letswaggerdotheheavylifting">Let Swagger do the heavy lifting</h2>\n\n<p>In the first post you have heard a lot about the Swagger YAML file defining both the available routes of the API and the necessary definitions of the objects being handled by the API.</p>\n\n<p>Now it''s time to use the YAML file and feed it to Swagger to let Swagger create the actual routes in an Express.js based back end application. Then we only have to implement the logic that is necessary for each route and let Swagger do the wiring between the different parts.</p>\n\n<p>Before Swagger can do the wiring, it must know which route will be associated with which function in which controller. Therefor we use specific keywords in the Swagger YAML file to add the required information.</p>\n\n<pre>\n<code>/camels:\n    x-swagger-router-controller: camelController\n    get:\n      description: Returns a list of camels.\n      operationId: getListOfCamels\n      tags:\n        - Camels\n      responses:\n        "200":\n          description: Camel array\n          schema:\n            type: array\n            items:\n              $ref: "#/definitions/Camel" \n</code></pre>\n\n<p>The <code>x-swagger-router-controller</code> specifies the file name where the function specified in <code>operationId</code> is defined. So now Swagger knows where to look for the function that is getting called when the front end accesses the <code>/camels</code> route.</p>\n\n<p>That''s it for the theory. Let''s have a look at the concrete project structure that is necessary to make the above description work.</p>\n\n<h2 id="creatingtheprojectstructure">Creating the project structure</h2>\n\n<p>The project structure heavily depends on the configuration of your swagger configuration file. I recommend the following structure since it is the standard project layout when using the Swagger command line tool and it has proven successful in several projects.</p>\n\n<pre>\n<code>/api\n    /controllers\n    /helpers\n    /mocks\n    /swagger\n/config\n/test\n</code></pre>\n\n<p>You can get that structure created with the Swagger CLI by issuing the following command:</p>\n\n<pre>\n<code>swagger project create your-project-name  \n</code></pre>\n\n<p>In the <code>app.js</code> file that is used to start the whole back end API application I would recommend to replace the <code>swagger-express-mw</code> package by the <code>swagger-node-runner</code>package, since the first one caused a lot of headache in various environments for me. Do not forget to install the <code>swagger-node-runner</code> package, if you did not do so already. Your <code>app.js</code> would then look like:</p>\n\n<pre>\n<code>var express = require(''express'');  \nvar runner = require(''swagger-node-runner'');\n\nvar config = {  \n  appRoot: __dirname\n};\n\nrunner.create(config, function(err, swaggerRunner) {  \n  if (err) { throw err; }\n\n  var expressRunner = swaggerRunner.expressMiddleware();\n  expressRunner.register(express());\n\n  app.listen(80);\n});\n</code></pre>\n\n<p>When you start your application with that setup, it will use the Swagger middleware to create the API routes and wire them with the controllers'' logic to provide the functionality you have defined in your Swagger YAML file.</p>\n\n<h2 id="usingtypescripttodefinetheapiobjects">Using Typescript to define the API objects</h2>\n\n<p>As you already know if you read the <a href="http://www.gros-engineering.com/how-to-design-the-perfect-rest-api-part-1/">first post of this series</a>, the Swagger definition file contains a definition section for the API objects, so that everybody working with the API knows about the structure of the different objects.</p>\n\n<p>If you only keep your structure in that Swagger definition file, it will create a big hassle to transform those object definitions into data structures that you can use for the coding process of both front end and back end. Instead of replicating those definitions manually, we could use the handy npm package called <code>typson</code> to write our object definitions in Typescript and derive the Swagger definitions from those Typescript definitions. The advantage: You can use type information in the development process and automatically keep the Swagger definitions in sync with the actual implementation.</p>\n\n<p>The process is simple. Include the <code>typson</code> package in your gulpfile.js and use a gulp task to transpile all Typescript definitions into a YAML file comprising the Swagger definitions.</p>\n\n<pre>\n<code>gulp.task(''typson'', function() {  \n  gulp.src(''./api/contracts/contracts.ts'')\n    .pipe(data(function(file) {\n      return typson.schema(file.path)\n        .done(function (schema) {\n          fs.writeFileSync(''./api/swagger/definitions.yaml'', yaml.stringify(schema, 10, 2));\n        });\n    }));\n});\n</code></pre>\n\n<p>To give you an example of such a Typescript-to-Swagger transformation, I wrote the Camel example object.</p>\n\n<pre>\n<code>/**\n * Data structure of a camel.\n */\nexport interface Camel {\n\n  /** Unique identifier for the camel */\n  id: number;\n\n  /** Name of the camel */\n  name: string;\n\n  /** Color of the camel */\n  color?: string;\n}\n</code></pre>\n\n<p>That will translate into</p>\n\n<pre>\n<code>Camel:  \n    id: Camel\n    type: object\n    description: ''Data structure of a camel.''\n    properties:\n      id:\n        description: ''Unique identifier for the camel''\n        type: string\n      name:\n        description: ''Name of the camel''\n        type: string\n      color:\n        description: ''Color of the camel''\n        type: string    \n    required:\n      - code\n      - name\n    additionalProperties: false\n</code></pre>\n\n<p>Now you could either append the freshly created definitions to the Swagger YAML file manually or you have the definitions file being exposed by some local web server. When you e.g. expose your definitions.yaml file on <code>http://localhost:8080</code> you could reference it in your Swagger.yaml file as follows:</p>\n\n<pre>\n<code>$ref: "http://localhost:8080/definitions.yaml#/definitions/Camel"\n</code></pre>\n\n<h2 id="bringingitalltogether">Bringing it all together</h2>\n\n<p>Today you learned how to integrate the Swagger eco-system in your back end development process. You can now use your Typescript interface definitions as Swagger definitions and have the Swagger paths being automatically created as Express.js routes.</p>\n\n<p>At some point I will add an example project on Github, that will help you getting started. If I forget about that, just send me an email and remind me of that outstanding promise :-)</p>\n\n<p>In the next post we will have a look at the front end integration part. We will see, how we can auto-generate front end mocks for all existing routes and how we can implement custom mock objects, if we need them.</p>\n\n<p>Stay tuned!</p>', ''),
(1035, '', ''),
(1036, '<h2 class="top-title" id="collectionsandobjects">Collections and objects</h2>\n\n<p>For REST APIs there are two key roles: Collections and objects. Every RESTful URL is build up of a varying combination of those two components. Let''s look at an easy example.</p>\n\n<pre>\n<code>http://www.egyptian-bazaar.com/camels/1  \n</code></pre>\n\n<p>We are back again with the camels example (don''t ask me why I harp on about those camels, it just happens). Here we have the collection represented by <code>/camels</code> and the object represented by <code>/camels/1</code>. So if we want to retrieve a list of camels (say collection), we use the <code>/camels</code> path and if we want to retrieve one particular camel with the identifier 1, we use the <code>/camels/1</code> path.</p>\n\n<p>Let''s enhance that example to make the web service even more useful.</p>\n\n<pre>\n<code>http://www.egyptian-bazaar.com/camels/1/humps/2  \n</code></pre>\n\n<p>If you make a GET request to that URL, you could retrieve an object for the hump with the identifier 2 of the camel with identifier 1. The object will include all information related to that hump. Like filling quantity. Oh my...</p>\n\n<p>There are discussions raging out there, if the representation of collections should be in singular or plural. I don''t want to put more fuel into it. Use the plural version. Flames are rising into the sky.</p>\n\n<h2 id="thedifferentrequestmethods">The different request methods</h2>\n\n<p>There are quite some request methods (also called HTTP(S) verbs) out there. To see a list of all of them I would recommend to read the official <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html">RFC 2616</a>. I will only cover the four methods that will be used most often in the design of RESTful APIs.</p>\n\n<h3 id="getmethod">GET method</h3>\n\n<p>The GET method is the most frequently used one in the Internet today. You ask yourself how I can know that? I asked myself the same question while writing that bold claim. Let''s put it that way: every website you visit requires a lot of GET requests to retrieve the different html documents, images, styles and scripts. If you start looking at the network section of the Chrome Inspector you will immediately note, how many GET requests are necessary to fully load the website of your choice.</p>\n\n<p>But back to topic: You will use a GET request to retrieve information from the API. So if you want to retrieve all camels currently available, you would do a <code>GET http://www.egyptian-bazaar.com/camels</code>.</p>\n\n<p>A GET request will never change anything on the server and will always return the same result (as long as no other request did change something in the meantime). This characteristic is called <strong>idempotent</strong> (just in case you want to show of in front of your friends with some fancy words). By the way: even though all HTTP(S) requests can include a request body, you should <em>never</em> provide any data in the body of a GET request. Never.</p>\n\n<p><strong>Mind the cache</strong>: A browser could and will cache GET requests, if you do not take counter measures against that. The most trivial solution is to make sure to include a parameter that makes the request unique.</p>\n\n<pre>\n<code>GET http://www.egyptian-bazaar.com/camels?nocache=123456  \n</code></pre>\n\n<p>You can use whatever parameter you like, just make sure to use a unique one with every request that you don''t want to be cached.<br />\nAlternatively, most of the Javascript frameworks out there provide methods to disable caching for AJAX requests like for example JQuery:</p>\n\n<pre>\n<code>$.ajax({\n  url: "http://www.egyptian-bazaar.com/camels", \n  cache: false\n});\n</code></pre>\n\n<p>A whole new chapter would be the use of ETags, but that is something you could get into on your own by spending some time on <a href="https://en.wikipedia.org/wiki/HTTP_ETag">Wikipedia</a>.</p>\n\n<h3 id="postmethod">POST method</h3>\n\n<p>A POST request will most likely contain data in the request body and change the data on your server. Therefore it will not create the same outcome when sending the request multiple times. You got it: it is <strong>not idempotent</strong>.</p>\n\n<p>POST requests are often used to create new objects on the server. So if you want to add a new camel to your collection of camels, you can use the following POST call:</p>\n\n<pre>\n<code>POST /camels HTTP/1.1  \nHost: egyptian-bazaar.com  \nname=Carlos&amp;age=35&amp;color=Champaign-Silver  \n</code></pre>\n\n<p>I won''t elaborate on POST requests in relation to camel humps, since this would lead to serious questions about ethics in genetic manipulation of camels and would most probably bring up animal rights activists against me. Scary.</p>\n\n<p>If you want to describe a POST request in a more natural language, you would say: "Add a new camel with the given attributes to the list of camels". That is one of the reasons why I recommended to use the plural form for collections. It just sounds awkward to say: "Add a new camel with the given attributes to the list of camel". I call that bombproof argumentation.</p>\n\n<h3 id="deletemethod">DELETE method</h3>\n\n<p>Does what it says: it deletes an object from the server. The syntax is as easy as for a GET request:</p>\n\n<pre>\n<code>DELETE http://www.egyptian-bazaar.com/camels/2  \n</code></pre>\n\n<p>This would delete our Carlos from the collection of camels. Bye Carlos.</p>\n\n<h3 id="putandpatchmethod">PUT and PATCH method</h3>\n\n<p>PUT and PATCH are available for similar reasons: to modify an existing object on the server. The difference lies in the body of the request. While PUT sends the whole object representation to the server (so the server only has to replace the old version with the new one), PATCH uses its own syntax to tell the server which properties of the object to modify. There is a very own syntax available in <a href="https://tools.ietf.org/html/rfc6902">RFC 6902</a> that would exceed the scope of that article.</p>\n\n<h2 id="therightresponsecode">The right response code</h2>\n\n<p>I want to shortly talk about response codes at the end and in particular about the success response codes, since I used them improperly for quite a long time without knowing the differences.</p>\n\n<p><strong>200 Ok</strong><br />\nUse the 200 status code, if the request was successful <em>and</em> if the server wants to include data in the response.</p>\n\n<p><strong>201 Created</strong><br />\nIf the server created a new object (in most cases after a successful POST request) the response to the client would have the 201 status code and some form of data in the response body that tells the client how to find the newly created resource.</p>\n\n<p><strong>204 No Content</strong><br />\nIf there is no data that must be returned to the client after a successful request, use the 204 status code without a response body.</p>\n\n<p>For a more detailed explanation on HTTP(S) status codes I recommend to have a look at the status code definition section of <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html">RFC 2616</a>. If you have any questions left, feel free to <a href="http://www.gros-engineering.com/#contact">contact me</a>.</p>\n\n<p>Thanks for reading and have a great Easter weekend!</p>', ''),
(1037, '', ''),
(1038, '<p>The back end part is done. The REST API is set into place and running somewhere in the background. Now it is time to integrate the Swagger definitions into the front end part of our application.</p>\n\n<p>As for the back end we have a ready to use npm package for the Swagger integration: <a href="https://www.npmjs.com/package/swagger-server">Swagger Server</a></p>\n\n<h2 id="whytobuilduponswagger">Why to build upon Swagger?</h2>\n\n<p>You could ask: Why should I build my front end on Swagger at all? I could also just use the Swagger file, open it in the <a href="http://editor.swagger.io/">Swagger Editor</a> and use the documentation to develop the front end.</p>\n\n<p>While this would be a totally valid approach, there are some more aspects to think about:</p>\n\n<ul><li>Do you want to run the - potentially time-consuming - back end calls against a live back end, while you develop?</li>\n	<li>Do you want to get live data from the back end or do you prefer to have mocked data during the development process?</li>\n	<li>How do you integrate the mocked data into the front end without affecting the built version?</li>\n</ul><p>As you can imagine, those questions can be easily answered with the Swagger Server package.</p>\n\n<h2 id="definethebuildprocess">Define the build process</h2>\n\n<p>We only rely on Node.js for this step. Let''s create a Javascript file and name it for example <code>server.js</code>. Then let''s load the Swagger Server which is based on Express.js.</p>\n\n<pre>\n<code>var swagger  = require(''swagger-server''),  \n    Server   = swagger.Server;\n\n// Create a Swagger Server instance\nvar server = new Server();  \n</code></pre>\n\n<p>We then parse the Swagger definitions that we have created in the previous tutorials.</p>\n\n<pre>\n<code>server.parse(''swagger.yaml'');  \n</code></pre>\n\n<p>Now we could just start the server and make it listen on the port that is specified in the <code>swagger.yaml</code> file.</p>\n\n<pre>\n<code>// Start listening\nserver.listen();  \n</code></pre>\n\n<p>But hey, what about mocking?</p>\n\n<h2 id="creatingmockhandlers">Creating mock handlers</h2>\n\n<p>While the Swagger Server will serve mock data by itself without defining anything else, we most likely want to define some mock objects of our own. Let''s do this for one of our routes defined in the <a href="http://www.gros-engineering.com/how-to-design-the-perfect-rest-api-part-1/">last part of this series</a>.</p>\n\n<pre>\n<code>/**\n * The camels route.\n *\n * @param server\n */\nmodule.exports = function (server) {\n\n  server.get(''/camels'', function(req, res) {\n    res.json([\n      {\n        "id": 1,\n        "name": "Carlos",\n        "color": "Autumn Gold"\n     },\n     {\n       "id": 2,\n       "name": "Alfredo",\n       "color": "Raven Black" // creepy I know\n     }\n  ]);\n};\n</code></pre>\n\n<p>But what if we have a parameter in our route like for retrieving one particular camel? No problem, Swagger Server offers a nice option for that.</p>\n\n<pre>\n<code>var swagger  = require(''swagger-server''),  \n    Resource = swagger.Resource;\n\n/**\n * The camels/:id route.\n *\n * @param server\n */\nmodule.exports = function (server) {\n\n  server.dataStore.save(\n    new Resource(''/camels/1'', { /* include Carlo here */ }));\n\n  server.dataStore.save(\n    new Resource(''/camels/2'', { /* include Alfredo here */ }));\n};\n</code></pre>\n\n<p>Sweet! Now we can create any type of mock object and return it for specific routes. Let''s tell Swagger Server to use those mocks.</p>\n\n<h2 id="includethemockhandlers">Include the mock handlers</h2>\n\n<p>Let''s get back to the <code>server.js</code> file we created in the last step. <strong>Before we tell the server to listen</strong>, we load the new mock objects defined in <code>mock/camels.js</code>and <code>mock/camel.js</code>.</p>\n\n<pre>\n<code>// initialize mock objects for all available routes\nrequire(''./mock/camels'')(server);  \nrequire(''./mock/camel'')(server);  \n</code></pre>\n\n<p>The only thing left is do add some configuration for the Swagger Server and include an error handler.</p>\n\n<pre>\n<code>// Enable Express'' case-sensitive and strict options\nserver.enable(''case sensitive routing'');  \nserver.enable(''strict routing'');\n\n// Add a custom error handler\nserver.use(function(err, req, res, next) {  \n  res.status(err.status);\n  res.type(''html'');\n  res.send(''&lt;html&gt;&lt;body&gt;&lt;h1&gt;'' + err.status + '' Error!&lt;/h1&gt;&lt;p&gt;'' + err.message + ''&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;''));\n});\n</code></pre>\n\n<h2 id="summary">Summary</h2>\n\n<p><strong>Congratulations, you reached the end of that short tutorial!</strong> We learned, how to work with Swagger, how to use it in our Node.js back end application and how to make the most out of it for the front end development process.</p>\n\n<p>I can only encourage you to try Swagger on your own. It''s an amazing ecosystem for API development and it makes your development a lot easier in the long term.</p>\n\n<p>If you have any questions or if you need some help with your API development, don''t hesitate to <a href="mailto:info@gros-engineering.com">get in touch</a> with me.</p>', ''),
(1039, '<p>This is a short post on AngularJS performance tweaks that will help you to write efficient AngularJS code. Be aware that this short list is – potentially - non-exhaustive and might be enhanced over time.</p>\n\n<h2 id="generalstuff">General stuff</h2>\n\n<ul><li>\n	<p>Keep <strong>number of watchers</strong> &lt; 2000<br />\n	To measure the amount of watchers used in an Angular app, there is a pretty good code-snippet that can be easily integrated into Chrome called <a href="https://github.com/kentcdodds/ng-stats">ng-stats</a>.</p>\n	</li>\n	<li>\n	<p>Prefer <code>ng-if</code> over <code>ng-show</code>/<code>ng-hide</code><br />\n	It strongly depends on your use case but always keep in mind, that elements with the ng-hide attribute are fully rendered and all DOM elements are created, even if the user cannot see anything. I would recommend reading <a href="http://stackoverflow.com/a/22142963">this answer</a> in StackOverflow for a better understanding.</p>\n	</li>\n	<li>\n	<p>Avoid <strong>deep-watchers</strong><br />\n	Most of us probably won''t do this, but it''s good to keep in mind that something like deep-watchers exist but should only be used in reasonable cases.</p>\n	</li>\n</ul><pre>\n<code>// example of a deep watcher (see true as third argument)\n$scope.$watch(''data'', function (newVal, oldVal) { /*...*/ }, true);\n</code></pre>\n\n<ul><li>\n	<p>Prefer <code>$scope.$digest</code> over <code>$scope.$apply</code><br />\n	While <code>$digest</code> only starts a digest cycle for the scope it is called upon, <code>$apply</code>triggers a digest-cycle on the <code>$rootScope</code>. This means that all watchers are checked instead of only the watchers in the given scope being checked (also see <a href="https://www.sitepoint.com/understanding-angulars-apply-digest/">this article</a>).</p>\n	</li>\n	<li>\n	<p>Use <code>$evalAsync()</code> when triggering the digest cycle manually<br />\n	Sometimes you must trigger the digest cycle manually resulting in an error message saying: <code>Error: $digest already in progress</code>.</p>\n	</li>\n</ul><pre>\n<code>$scope.$evalAsync(function () { \n  // do something that requires dirty checking of data \n});\n</code></pre>\n\n<h2 id="repeater">Repeater</h2>\n\n<ul><li>Use <strong>track by</strong> in ng-repeat especially for complex objects<br />\n	If data is reloaded in the collection, Angular will rebuild the DOM for all those elements. That won''t happen, if you track your objects for example by their id, since Angular would know that the object is already represented in the DOM.</li>\n</ul><pre>\n<code>&lt;div ng-repeat="obj in ObjectCollection track by obj.id"&gt;  \n  {{ obj.name }}\n&lt;/div&gt;  \n</code></pre>\n\n<p>Also read <a href="http://www.bennadel.com/blog/2556-using-track-by-with-ngrepeat-in-angularjs-1-2.htm">this</a> for detail information.</p>\n\n<ul><li>Do not use <strong>inline methods</strong> in ng-repeat<br />\n	Angular will re-render all items in the collection returned by the inline method with every digest cycle. Pretty bad idea!</li>\n</ul><pre>\n<code>&lt;div ng-repeat="obj in getAllObjects()"&gt; &lt;!-- don''t do this --&gt;  \n  {{ obj.name }}\n&lt;/div&gt;  \n</code></pre>\n\n<ul><li>Use the <strong>bindonce package</strong> for large lists<br />\n	When rendering large lists with data that won''t be changed the bindonce package can help a lot to improve the performance of the app. See the <a href="https://github.com/Pasvaz/bindonce">Github page</a> of the project for detailed information.</li>\n</ul><h2 id="databindings">Data bindings</h2>\n\n<ul><li>Use <strong>one-time data bindings</strong> whenever possible<br />\n	Instead of binding all variables in templates and keeping watchers for those bindings, it often is enough to use one-time binding and thereby reduce the amount of watchers drastically.</li>\n</ul><pre>\n<code>// example 1: one-time binding for the color variable\n&lt;div name="attr: {{::color}}"&gt;text: {{::name | uppercase}}&lt;/div&gt;\n\n// example 2: one-time binding for the items collection\n&lt;ul&gt;&lt;li ng-repeat="item in ::items"&gt;{{item.name}};&lt;/li&gt;&lt;/ul&gt;\n\n// example 3: one-time binding for the name variable\n&lt;p&gt;One time binding: {{::name}}&lt;/p&gt;\n\n// example 4: ng-if only evaluated once\n&lt;div ng-if="::user.isLoggedIn"&gt;Information for logged-in user&lt;/div&gt;\n\n// example 5: ng-class only evaluated once\n&lt;div ng-class="::{ loggedIn: user.isLoggedIn }"&gt;&lt;/div&gt;  \n</code></pre>\n\n<ul><li>Prefer <strong>pre-filtered values</strong> over filters in templates<br />\n	When using filters in templates, the filter is applied with every digest cycle resulting in a potentially serious impact on the overall app performance.</li>\n</ul><pre>\n<code>&lt;p&gt;{{ user.signature | strip | reformat }}&lt;/p&gt; // don''t do this  \n&lt;p&gt;{{ filteredUserSignature }}&lt;/p&gt; // pre-filtere value in controller  \n&lt;p&gt;{{ ::filteredUserSignature }}&lt;/p&gt; // even better with one-time binding  \n</code></pre>\n\n<h2 id="disablingdebugmode">Disabling debug mode</h2>\n\n<p>A often neglected performance bottleneck is the <a href="https://docs.angularjs.org/guide/production">debug mode</a> of AngularJS. As the author of <a href="https://medium.com/swlh/improving-angular-performance-with-1-line-of-code-a1fb814a6476">this article</a> figured out, even bigger websites have the debug mode enabled leading to a less performant web application and not bringing any benefit while in production.<br />\nTo easily disable debug information in your production app, just configure it in the application''s config phase.</p>\n\n<pre>\n<code>myApp.config([''$compileProvider'', function ($compileProvider) {  \n  $compileProvider.debugInfoEnabled(false);\n}]);</code></pre>', ''),
(1040, '', ''),
(1041, '', ''),
(1042, '', ''),
(1043, '', ''),
(1051, '<p>As a dual student with Hewlett Packard I did several short projects using a lot of different tools and programming languages. My bachelor''s thesis was about SharePoint and the implementation of a filing system in the public sector.</p>', ''),
(1052, '<p>Initially responsible for developing different parts of an online development environment for embedded systems, I was then managing a project with the goal to create a new operating software for ticket vending systems of rail operators.</p>', ''),
(1053, '<p>Working on the business travel startup 1ClickTrips of the EFEXCON AG. Responsible for the technology selection, overall architecture and implementation of the door-to-door travel management solution.</p>', ''),
(1055, '<p>Working on different projects ranging from the web shop of a big car brand in Stuttgart over a native patient administration software for a small osteopath office to a media control software optimised for tablet computers that will be used in the show rooms of a local car dealer.</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `field_date`
--

DROP TABLE IF EXISTS `field_date`;
CREATE TABLE `field_date` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_date`
--

INSERT INTO `field_date` (`pages_id`, `data`) VALUES
(1032, '2016-03-11 00:00:00'),
(1027, '2016-03-08 00:00:00'),
(1034, '2016-03-16 00:00:00'),
(1036, '2016-03-25 00:00:00'),
(1038, '2016-06-12 00:00:00'),
(1039, '2016-06-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `field_email`
--

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_email`
--

INSERT INTO `field_email` (`pages_id`, `data`) VALUES
(41, 'info@gros-engineering.com'),
(1026, 'info@gros-engineering.com');

-- --------------------------------------------------------

--
-- Table structure for table `field_headline`
--

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `data1012` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_headline`
--

INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`) VALUES
(1, 'Gros Engineering', 'Gros Engineering'),
(1051, 'Oct 2009 - Sep 2012', ''),
(1052, 'Oct 2012 - Apr 2014', ''),
(1053, 'Jun 2014 - Apr 2016', ''),
(1055, 'May 2016 - present', '');

-- --------------------------------------------------------

--
-- Table structure for table `field_images`
--

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_images`
--

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1034, 'swagger.jpg', 0, '[""]', '2017-01-15 14:34:21', '2017-01-15 14:34:21'),
(1027, 'results.jpg', 4, '[""]', '2017-01-15 13:31:21', '2017-01-15 13:31:21'),
(1027, 'result_details-2.jpg', 5, '[""]', '2017-01-15 13:31:21', '2017-01-15 13:31:21'),
(1027, 'result_details_hotel.jpg', 3, '[""]', '2017-01-15 13:31:21', '2017-01-15 13:31:21'),
(1027, 'start_screen.jpg', 2, '[""]', '2017-01-15 13:31:21', '2017-01-15 13:31:21'),
(1027, 'friend_list.jpg', 1, '[""]', '2017-01-15 13:31:21', '2017-01-15 13:31:21'),
(1027, 'halfway.jpg', 0, '[""]', '2017-01-15 13:32:23', '2017-01-15 13:32:23'),
(1032, 'camel-1.jpg', 0, '[""]', '2017-01-15 14:02:37', '2017-01-15 14:02:37'),
(1036, 'rest_design.jpg', 0, '[""]', '2017-01-15 15:17:15', '2017-01-15 15:17:15'),
(1038, 'swagger_hero.jpg', 0, '[""]', '2017-01-15 15:27:14', '2017-01-15 15:27:14'),
(1039, 'baby_amazed.jpg', 0, '[""]', '2017-01-15 15:30:58', '2017-01-15 15:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `field_language`
--

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_language`
--

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES
(40, 1010, 0),
(41, 1010, 0);

-- --------------------------------------------------------

--
-- Table structure for table `field_language_files`
--

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_language_files`
--

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1012, 'wire--templates-admin--debug-inc.json', 117, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--textformatter--textformatterentities-module.json', 116, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--system--systemupdater--systemupdater-module.json', 115, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', 114, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', 113, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', 112, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processuser--processuser-module.json', 111, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', 110, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processtemplate--processtemplate-module.json', 109, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processprofile--processprofile-module.json', 107, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processrole--processrole-module.json', 108, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpermission--processpermission-module.json', 106, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpageview-module.json', 105, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpagetype--processpagetype-module.json', 104, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpagetrash-module.json', 103, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpagesort-module.json', 102, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpagesearch--processpagesearch-module.json', 101, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpagelister--processpagelister-module.json', 100, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpagelist--processpagelist-module.json', 99, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpageedit--processpageedit-module.json', 96, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', 98, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', 97, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpageclone-module.json', 95, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processpageadd--processpageadd-module.json', 94, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processmodule--processmoduleinstall-php.json', 93, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processlogin--processlogin-module.json', 91, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processmodule--processmodule-module.json', 92, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processlist-module.json', 90, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processhome-module.json', 89, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processforgotpassword-module.json', 88, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processfield--processfield-module.json', 86, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--process--processfield--processfieldexportimport-php.json', 87, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--pagerender-module.json', 85, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--pagepaths-module.json', 84, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--languagesupport--languagetabs-module.json', 80, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--languagesupport--processlanguage-module.json', 81, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--markup--markuppagefields-module.json', 82, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--markup--markuppagernav--markuppagernav-module.json', 83, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--languagesupport--languagesupportpagenames-module.json', 79, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--languagesupport--languageparser-php.json', 76, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--languagesupport--languagesupport-module.json', 77, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--languagesupport--languagesupportfields-module.json', 78, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldurl-module.json', 74, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', 75, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldtinymce--inputfieldtinymce-module.json', 73, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldtextarea-module.json', 72, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldselectmultiple-module.json', 68, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', 69, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldtext-module.json', 71, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', 70, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldselect-module.json', 67, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', 66, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldpassword-module.json', 65, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', 61, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', 62, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', 63, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', 64, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', 60, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', 59, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', 58, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', 57, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldname-module.json', 56, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldmarkup-module.json', 55, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldinteger-module.json', 54, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', 49, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldfloat-module.json', 50, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldform-module.json', 51, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldhidden-module.json', 52, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', 53, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldfieldset-module.json', 48, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldemail-module.json', 47, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', 46, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', 45, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', 44, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldbutton-module.json', 42, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldcheckbox-module.json', 43, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypetextarea-module.json', 39, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypeurl-module.json', 40, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', 41, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypetext-module.json', 38, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypeselector-module.json', 37, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', 36, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', 35, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypepagetable-module.json', 34, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypepage-module.json', 33, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypemodule-module.json', 32, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypefloat-module.json', 31, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypefile-module.json', 30, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypedatetime-module.json', 29, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', 28, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', 27, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', 24, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', 25, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', 26, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', 23, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--wireupload-php.json', 22, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--wiretempdir-php.json', 21, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--sessioncsrf-php.json', 18, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--wirecache-php.json', 19, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--wirehttp-php.json', 20, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--session-php.json', 17, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--pages-php.json', 13, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--password-php.json', 14, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--process-php.json', 15, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--sanitizer-php.json', 16, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--pagefile-php.json', 11, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--pageimage-php.json', 12, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--modules-php.json', 10, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--inputfieldwrapper-php.json', 9, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--inputfield-php.json', 8, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--functions-php.json', 7, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--fieldtypemulti-php.json', 6, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--fieldtype-php.json', 5, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--fieldselectorinfo-php.json', 4, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--fields-php.json', 2, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--admintheme-php.json', 3, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--fieldgroups-php.json', 1, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--core--field-php.json', 0, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'wire--templates-admin--default-php.json', 118, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `field_language_files_site`
--

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_language_files_site`
--

INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1012, 'site--templates--_main-php.json', 0, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01'),
(1012, 'site--templates--search-php.json', 1, '[""]', '2017-01-08 12:58:01', '2017-01-08 12:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `field_pass`
--

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

--
-- Dumping data for table `field_pass`
--

INSERT INTO `field_pass` (`pages_id`, `data`, `salt`) VALUES
(41, 'tXaXGSrxHlVDy0qxGHin7f9zVBejwxG', '$2y$11$HYvdsM0lGLTOqlf.832FBu'),
(40, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `field_permissions`
--

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_permissions`
--

INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES
(38, 32, 1),
(38, 34, 2),
(38, 35, 3),
(37, 36, 0),
(38, 36, 0),
(38, 50, 4),
(38, 51, 5),
(38, 52, 7),
(38, 53, 8),
(38, 54, 6);

-- --------------------------------------------------------

--
-- Table structure for table `field_process`
--

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_process`
--

INSERT INTO `field_process` (`pages_id`, `data`) VALUES
(6, 17),
(3, 12),
(8, 12),
(9, 14),
(10, 7),
(11, 47),
(16, 48),
(300, 104),
(21, 50),
(29, 66),
(23, 10),
(304, 138),
(31, 136),
(22, 76),
(30, 68),
(303, 129),
(2, 87),
(302, 121),
(301, 109),
(28, 76),
(1007, 150),
(1009, 159),
(1011, 160),
(1015, 168),
(1017, 169);

-- --------------------------------------------------------

--
-- Table structure for table `field_quantity`
--

DROP TABLE IF EXISTS `field_quantity`;
CREATE TABLE `field_quantity` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_quantity`
--

INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES
(1020, 4),
(1044, 100),
(1045, 90),
(1046, 90),
(1047, 95),
(1048, 75),
(1049, 80),
(1050, 70),
(1054, 90);

-- --------------------------------------------------------

--
-- Table structure for table `field_roles`
--

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_roles`
--

INSERT INTO `field_roles` (`pages_id`, `data`, `sort`) VALUES
(40, 37, 0),
(41, 37, 0),
(41, 38, 2);

-- --------------------------------------------------------

--
-- Table structure for table `field_subtitle`
--

DROP TABLE IF EXISTS `field_subtitle`;
CREATE TABLE `field_subtitle` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `data1012` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_subtitle`
--

INSERT INTO `field_subtitle` (`pages_id`, `data`, `data1012`) VALUES
(1051, 'Hewlett Packard - Germany and Ireland', ''),
(1052, 'Synapticon GmbH, Germany', ''),
(1053, 'EFEXCON AG, Switzerland', ''),
(1055, 'Gros Engineering, Germany', '');

-- --------------------------------------------------------

--
-- Table structure for table `field_summary`
--

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_summary`
--

INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`) VALUES
(1037, '', ''),
(1038, '', ''),
(1039, '', ''),
(1040, '', ''),
(1001, 'Legal information', 'Deutsches Impressum'),
(1041, '', ''),
(1042, '', ''),
(1043, '', ''),
(1033, '', ''),
(1034, '', ''),
(1035, '', ''),
(1036, '', ''),
(1, 'Hello! I’m Sascha Gros. Full stack web developer and data scientist. Specializing in Node.js and RESTful API design. Living test-driven development. Experienced with all stages of the development cycle in agile environments. Well-versed in numerous programming languages and web frameworks. Bringing web technology to all fields of your software needs.', 'Hello! I’m Sascha Gros. Full stack web developer and data scientist. Specializing in Node.js and RESTful API design. Living test-driven development. Experienced with all stages of the development cycle in agile environments. Well-versed in numerous programming languages and web frameworks. Bringing web technology to all fields of your software needs.'),
(1022, '', ''),
(1023, '', ''),
(1024, '', ''),
(1032, '', ''),
(1027, '', ''),
(1028, '', ''),
(1029, '', ''),
(1030, '', ''),
(1031, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `field_tags`
--

DROP TABLE IF EXISTS `field_tags`;
CREATE TABLE `field_tags` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_tags`
--

INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES
(1027, 1023, 0),
(1032, 1023, 0),
(1034, 1023, 1),
(1038, 1023, 1),
(1039, 1023, 1),
(1027, 1028, 1),
(1027, 1029, 2),
(1032, 1033, 1),
(1034, 1033, 0),
(1036, 1033, 0),
(1038, 1033, 0),
(1039, 1035, 0),
(1036, 1037, 1),
(1039, 1037, 2);

-- --------------------------------------------------------

--
-- Table structure for table `field_title`
--

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `data1012` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_title`
--

INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES
(11, 'Templates', ''),
(16, 'Fields', ''),
(22, 'Setup', ''),
(3, 'Pages', ''),
(6, 'Add Page', ''),
(8, 'Tree', ''),
(9, 'Save Sort', ''),
(10, 'Edit', ''),
(21, 'Modules', ''),
(29, 'Users', ''),
(30, 'Roles', ''),
(2, 'Admin', ''),
(7, 'Trash', ''),
(27, '404 Page', '404 Seite'),
(302, 'Insert Link', ''),
(23, 'Login', ''),
(304, 'Profile', ''),
(301, 'Empty Trash', ''),
(300, 'Search', ''),
(303, 'Insert Image', ''),
(28, 'Access', ''),
(31, 'Permissions', ''),
(32, 'Edit pages', ''),
(34, 'Delete pages', ''),
(35, 'Move pages (change parent)', ''),
(36, 'View pages', ''),
(50, 'Sort child pages', ''),
(51, 'Change templates on pages', ''),
(52, 'Administer users', ''),
(53, 'User can update profile/password', ''),
(54, 'Lock or unlock a page', ''),
(1, 'Home', 'Zuhause'),
(1001, 'Legal', 'Impressum'),
(1033, 'api', 'api'),
(1000, 'Search', 'Suche'),
(1041, 'Content', 'Inhalt'),
(1006, 'Use Page Lister', ''),
(1007, 'Find', ''),
(1009, 'Languages', ''),
(1010, 'English', 'Englisch'),
(1011, 'Language Translator', ''),
(1012, 'German', 'Deutsch'),
(1024, 'Meta', ''),
(1015, 'Recent', ''),
(1016, 'Can see recently edited pages', ''),
(1017, 'Logs', ''),
(1018, 'Can view system logs', ''),
(1019, 'Can manage system logs', ''),
(1020, 'Blog', ''),
(1022, 'Tags', ''),
(1023, 'coding', 'entwicklung'),
(1032, 'The Perfect REST API (Part 1)', ''),
(41, 'Sascha Gros', ''),
(1026, 'Contact', 'Kontakt'),
(1027, 'Sleepless In Berlin', ''),
(1028, 'travel', 'reisen'),
(1029, 'startup', 'startup'),
(1030, 'mobile', 'mobil'),
(1031, 'web', 'web'),
(1034, 'The Perfect REST API (Part 2)', ''),
(1035, 'angularjs', 'angularjs'),
(1036, 'REST API Design Principles', ''),
(1037, 'best practices', 'best practices'),
(1038, 'The Perfect REST API (Part 3)', ''),
(1039, 'AngularJS Performance Tweaks', ''),
(1040, 'javascript', 'javascript'),
(1042, 'Skills', ''),
(1043, 'Experience', ''),
(1044, 'AngularJS', ''),
(1045, 'Node.js', ''),
(1046, 'HTML & CSS', ''),
(1047, 'Javascript / Typescript', ''),
(1048, 'SharePoint', ''),
(1049, 'Electron.js', ''),
(1050, 'Ghost CMS', ''),
(1051, 'Student and Software Developer', ''),
(1052, 'Software Developer and Project Manager', ''),
(1053, 'Full Stack Web Developer', ''),
(1054, 'Swagger IO', ''),
(1055, 'Freelance Software Engineer', '');

-- --------------------------------------------------------

--
-- Table structure for table `field_vacation`
--

DROP TABLE IF EXISTS `field_vacation`;
CREATE TABLE `field_vacation` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_vacation`
--

INSERT INTO `field_vacation` (`pages_id`, `data`) VALUES
(1, '2017-01-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES
(1, 'FieldtypeTextarea', 0, '', '2017-01-08 11:58:01'),
(2, 'FieldtypeNumber', 0, '', '2017-01-08 11:58:01'),
(3, 'FieldtypeText', 0, '', '2017-01-08 11:58:01'),
(4, 'FieldtypePage', 3, '', '2017-01-08 11:58:01'),
(30, 'InputfieldForm', 0, '', '2017-01-08 11:58:01'),
(6, 'FieldtypeFile', 1, '', '2017-01-08 11:58:01'),
(7, 'ProcessPageEdit', 1, '', '2017-01-08 11:58:01'),
(10, 'ProcessLogin', 0, '', '2017-01-08 11:58:01'),
(12, 'ProcessPageList', 0, '{"pageLabelField":"title","paginationLimit":25,"limit":50}', '2017-01-08 11:58:01'),
(121, 'ProcessPageEditLink', 1, '', '2017-01-08 11:58:01'),
(14, 'ProcessPageSort', 0, '', '2017-01-08 11:58:01'),
(15, 'InputfieldPageListSelect', 0, '', '2017-01-08 11:58:01'),
(117, 'JqueryUI', 1, '', '2017-01-08 11:58:01'),
(17, 'ProcessPageAdd', 0, '', '2017-01-08 11:58:01'),
(125, 'SessionLoginThrottle', 11, '', '2017-01-08 11:58:01'),
(122, 'InputfieldPassword', 0, '', '2017-01-08 11:58:01'),
(25, 'InputfieldAsmSelect', 0, '', '2017-01-08 11:58:01'),
(116, 'JqueryCore', 1, '', '2017-01-08 11:58:01'),
(27, 'FieldtypeModule', 1, '', '2017-01-08 11:58:01'),
(28, 'FieldtypeDatetime', 0, '', '2017-01-08 11:58:01'),
(29, 'FieldtypeEmail', 1, '', '2017-01-08 11:58:01'),
(108, 'InputfieldURL', 0, '', '2017-01-08 11:58:01'),
(32, 'InputfieldSubmit', 0, '', '2017-01-08 11:58:01'),
(33, 'InputfieldWrapper', 0, '', '2017-01-08 11:58:01'),
(34, 'InputfieldText', 0, '', '2017-01-08 11:58:01'),
(35, 'InputfieldTextarea', 0, '', '2017-01-08 11:58:01'),
(36, 'InputfieldSelect', 0, '', '2017-01-08 11:58:01'),
(37, 'InputfieldCheckbox', 0, '', '2017-01-08 11:58:01'),
(38, 'InputfieldCheckboxes', 0, '', '2017-01-08 11:58:01'),
(39, 'InputfieldRadios', 0, '', '2017-01-08 11:58:01'),
(40, 'InputfieldHidden', 0, '', '2017-01-08 11:58:01'),
(41, 'InputfieldName', 0, '', '2017-01-08 11:58:01'),
(43, 'InputfieldSelectMultiple', 0, '', '2017-01-08 11:58:01'),
(45, 'JqueryWireTabs', 0, '', '2017-01-08 11:58:01'),
(46, 'ProcessPage', 0, '', '2017-01-08 11:58:01'),
(47, 'ProcessTemplate', 0, '', '2017-01-08 11:58:01'),
(48, 'ProcessField', 32, '', '2017-01-08 11:58:01'),
(50, 'ProcessModule', 0, '', '2017-01-08 11:58:01'),
(114, 'PagePermissions', 3, '', '2017-01-08 11:58:01'),
(97, 'FieldtypeCheckbox', 1, '', '2017-01-08 11:58:01'),
(115, 'PageRender', 3, '{"clearCache":1}', '2017-01-08 11:58:01'),
(55, 'InputfieldFile', 0, '', '2017-01-08 11:58:01'),
(56, 'InputfieldImage', 0, '', '2017-01-08 11:58:01'),
(57, 'FieldtypeImage', 1, '', '2017-01-08 11:58:01'),
(60, 'InputfieldPage', 0, '{"inputfieldClasses":["InputfieldSelect","InputfieldSelectMultiple","InputfieldCheckboxes","InputfieldRadios","InputfieldAsmSelect","InputfieldPageListSelect","InputfieldPageListSelectMultiple"]}', '2017-01-08 11:58:01'),
(61, 'TextformatterEntities', 0, '', '2017-01-08 11:58:01'),
(66, 'ProcessUser', 0, '{"showFields":["name","email","roles"]}', '2017-01-08 11:58:01'),
(67, 'MarkupAdminDataTable', 0, '', '2017-01-08 11:58:01'),
(68, 'ProcessRole', 0, '{"showFields":["name"]}', '2017-01-08 11:58:01'),
(76, 'ProcessList', 0, '', '2017-01-08 11:58:01'),
(78, 'InputfieldFieldset', 0, '', '2017-01-08 11:58:01'),
(79, 'InputfieldMarkup', 0, '', '2017-01-08 11:58:01'),
(80, 'InputfieldEmail', 0, '', '2017-01-08 11:58:01'),
(89, 'FieldtypeFloat', 1, '', '2017-01-08 11:58:01'),
(83, 'ProcessPageView', 0, '', '2017-01-08 11:58:01'),
(84, 'FieldtypeInteger', 0, '', '2017-01-08 11:58:01'),
(85, 'InputfieldInteger', 0, '', '2017-01-08 11:58:01'),
(86, 'InputfieldPageName', 0, '', '2017-01-08 11:58:01'),
(87, 'ProcessHome', 0, '', '2017-01-08 11:58:01'),
(90, 'InputfieldFloat', 0, '', '2017-01-08 11:58:01'),
(94, 'InputfieldDatetime', 0, '', '2017-01-08 11:58:01'),
(98, 'MarkupPagerNav', 0, '', '2017-01-08 11:58:01'),
(129, 'ProcessPageEditImageSelect', 1, '', '2017-01-08 11:58:01'),
(103, 'JqueryTableSorter', 1, '', '2017-01-08 11:58:01'),
(104, 'ProcessPageSearch', 1, '{"searchFields":"title","displayField":"title path"}', '2017-01-08 11:58:01'),
(105, 'FieldtypeFieldsetOpen', 1, '', '2017-01-08 11:58:01'),
(106, 'FieldtypeFieldsetClose', 1, '', '2017-01-08 11:58:01'),
(107, 'FieldtypeFieldsetTabOpen', 1, '', '2017-01-08 11:58:01'),
(109, 'ProcessPageTrash', 1, '', '2017-01-08 11:58:01'),
(111, 'FieldtypePageTitle', 1, '', '2017-01-08 11:58:01'),
(112, 'InputfieldPageTitle', 0, '', '2017-01-08 11:58:01'),
(113, 'MarkupPageArray', 3, '', '2017-01-08 11:58:01'),
(131, 'InputfieldButton', 0, '', '2017-01-08 11:58:01'),
(133, 'FieldtypePassword', 1, '', '2017-01-08 11:58:01'),
(134, 'ProcessPageType', 33, '{"showFields":[]}', '2017-01-08 11:58:01'),
(135, 'FieldtypeURL', 1, '', '2017-01-08 11:58:01'),
(136, 'ProcessPermission', 1, '{"showFields":["name","title"]}', '2017-01-08 11:58:01'),
(137, 'InputfieldPageListSelectMultiple', 0, '', '2017-01-08 11:58:01'),
(138, 'ProcessProfile', 1, '{"profileFields":["pass","email","language"]}', '2017-01-08 11:58:01'),
(139, 'SystemUpdater', 1, '{"systemVersion":15,"coreVersion":"3.0.42"}', '2017-01-08 11:58:01'),
(148, 'AdminThemeDefault', 10, '{"colors":"classic"}', '2017-01-08 11:58:01'),
(149, 'InputfieldSelector', 42, '', '2017-01-08 11:58:01'),
(150, 'ProcessPageLister', 32, '', '2017-01-08 11:58:01'),
(151, 'JqueryMagnific', 1, '', '2017-01-08 11:58:01'),
(152, 'PagePathHistory', 3, '', '2017-01-08 11:58:01'),
(155, 'InputfieldCKEditor', 0, '', '2017-01-08 11:58:01'),
(156, 'MarkupHTMLPurifier', 0, '', '2017-01-08 11:58:01'),
(158, 'LanguageSupport', 35, '{"languagesPageID":1009,"defaultLanguagePageID":1010,"otherLanguagePageIDs":[1012],"languageTranslatorPageID":1011}', '2017-01-08 11:58:01'),
(159, 'ProcessLanguage', 1, '', '2017-01-08 11:58:01'),
(160, 'ProcessLanguageTranslator', 1, '', '2017-01-08 11:58:01'),
(161, 'LanguageSupportFields', 3, '', '2017-01-08 11:58:01'),
(162, 'FieldtypeTextLanguage', 1, '', '2017-01-08 11:58:01'),
(163, 'FieldtypePageTitleLanguage', 1, '', '2017-01-08 11:58:01'),
(164, 'FieldtypeTextareaLanguage', 1, '', '2017-01-08 11:58:01'),
(165, 'LanguageSupportPageNames', 3, '{"moduleVersion":9,"pageNumUrlPrefix1010":"page","useHomeSegment":0}', '2017-01-08 11:58:01'),
(166, 'LanguageTabs', 11, '', '2017-01-08 11:58:01'),
(168, 'ProcessRecentPages', 1, '', '2017-01-08 11:58:42'),
(169, 'ProcessLogger', 1, '', '2017-01-08 11:59:06'),
(170, 'InputfieldIcon', 0, '', '2017-01-08 11:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `templates_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 05:09:00',
  `created_users_id` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name1012` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1012` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES
(1, 0, 1, 'en', 9, '2017-01-19 05:22:46', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 0, 'de', 1),
(2, 1, 2, 'pwadmin', 1035, '2017-01-08 11:59:27', 40, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 7, NULL, 1),
(3, 2, 2, 'page', 21, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 0, NULL, 1),
(6, 3, 2, 'add', 21, '2017-01-08 11:59:26', 40, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 0, NULL, 1),
(7, 1, 2, 'trash', 1039, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 8, NULL, 1),
(8, 3, 2, 'list', 1045, '2017-01-08 12:03:25', 40, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 1, NULL, 1),
(9, 3, 2, 'sort', 1047, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 2, NULL, 1),
(10, 3, 2, 'edit', 1045, '2017-01-08 12:03:25', 40, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 3, NULL, 1),
(11, 22, 2, 'template', 21, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 0, NULL, 1),
(16, 22, 2, 'field', 21, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 2, NULL, 1),
(21, 2, 2, 'module', 21, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 2, NULL, 1),
(22, 2, 2, 'setup', 21, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 1, NULL, 1),
(23, 2, 2, 'login', 1035, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 4, NULL, 1),
(27, 1, 29, 'http404', 1035, '2017-01-19 05:40:51', 41, '2017-01-08 11:58:01', 3, '2017-01-08 12:58:01', 6, NULL, 1),
(28, 2, 2, 'access', 13, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 3, NULL, 1),
(29, 28, 2, 'users', 29, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 0, NULL, 1),
(30, 28, 2, 'roles', 29, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 1, NULL, 1),
(31, 28, 2, 'permissions', 29, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 2, NULL, 1),
(32, 31, 5, 'page-edit', 25, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 2, NULL, 1),
(34, 31, 5, 'page-delete', 25, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 3, NULL, 1),
(35, 31, 5, 'page-move', 25, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 4, NULL, 1),
(36, 31, 5, 'page-view', 25, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 0, NULL, 1),
(37, 30, 4, 'guest', 25, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 0, NULL, 1),
(38, 30, 4, 'superuser', 25, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 1, NULL, 1),
(41, 29, 3, 'sascha', 1, '2017-01-15 12:21:25', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 0, NULL, 1),
(40, 29, 3, 'guest', 25, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 1, NULL, 1),
(50, 31, 5, 'page-sort', 25, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 41, '2017-01-08 12:58:01', 5, NULL, 1),
(51, 31, 5, 'page-template', 25, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 41, '2017-01-08 12:58:01', 6, NULL, 1),
(52, 31, 5, 'user-admin', 25, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 41, '2017-01-08 12:58:01', 10, NULL, 1),
(53, 31, 5, 'profile-edit', 1, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 41, '2017-01-08 12:58:01', 13, NULL, 1),
(54, 31, 5, 'page-lock', 1, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 41, '2017-01-08 12:58:01', 8, NULL, 1),
(300, 3, 2, 'search', 1045, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 5, NULL, 1),
(301, 3, 2, 'trash', 1047, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 5, NULL, 1),
(302, 3, 2, 'link', 1041, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 6, NULL, 1),
(303, 3, 2, 'image', 1041, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 7, NULL, 1),
(304, 2, 2, 'profile', 1025, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 41, '2017-01-08 12:58:01', 5, NULL, 1),
(1000, 1, 26, 'search', 1025, '2017-01-13 13:52:48', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 2, 'suche', 1),
(1001, 1, 29, 'legal', 1, '2017-01-13 14:41:31', 41, '2017-01-08 11:58:01', 2, '2017-01-08 12:58:01', 3, 'impressum', 1),
(1034, 1020, 45, 'how-to-design-the-perfect-rest-api-part-2', 1, '2017-01-15 13:34:21', 41, '2017-01-15 13:32:18', 41, '2017-01-15 14:34:21', 2, NULL, 1),
(1033, 1022, 29, 'api', 1025, '2017-01-17 12:09:50', 41, '2017-01-15 13:02:57', 41, '2017-01-15 14:03:58', 5, NULL, 1),
(1006, 31, 5, 'page-lister', 1, '2017-01-08 11:58:01', 40, '2017-01-08 11:58:01', 40, '2017-01-08 12:58:01', 9, NULL, 1),
(1007, 3, 2, 'lister', 1, '2017-01-08 11:58:01', 40, '2017-01-08 11:58:01', 40, '2017-01-08 12:58:01', 8, NULL, 1),
(1009, 22, 2, 'languages', 16, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 41, '2017-01-08 12:58:01', 2, NULL, 1),
(1010, 1009, 43, 'default', 16, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 41, '2017-01-08 12:58:01', 0, NULL, 1),
(1011, 22, 2, 'language-translator', 1040, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 41, '2017-01-08 12:58:01', 3, NULL, 1),
(1012, 1009, 43, 'de', 1, '2017-01-08 11:58:01', 41, '2017-01-08 11:58:01', 41, '2017-01-08 12:58:01', 1, NULL, 1),
(1015, 3, 2, 'recent-pages', 1, '2017-01-08 11:58:42', 40, '2017-01-08 11:58:42', 40, '2017-01-08 12:58:42', 9, NULL, 0),
(1016, 31, 5, 'page-edit-recent', 1, '2017-01-08 11:58:43', 40, '2017-01-08 11:58:43', 40, '2017-01-08 12:58:43', 10, NULL, 1),
(1017, 22, 2, 'logs', 1, '2017-01-08 11:59:06', 40, '2017-01-08 11:59:06', 40, '2017-01-08 12:59:06', 4, NULL, 0),
(1018, 31, 5, 'logs-view', 1, '2017-01-08 11:59:06', 40, '2017-01-08 11:59:06', 40, '2017-01-08 12:59:06', 11, NULL, 1),
(1019, 31, 5, 'logs-edit', 1, '2017-01-08 11:59:06', 40, '2017-01-08 11:59:06', 40, '2017-01-08 12:59:06', 12, NULL, 1),
(1020, 1, 44, 'blog', 1, '2017-01-17 10:08:56', 41, '2017-01-08 13:33:47', 41, '2017-01-08 14:41:05', 0, NULL, 1),
(1024, 1, 29, 'meta', 1025, '2017-01-09 14:33:44', 41, '2017-01-09 14:33:29', 41, '2017-01-09 15:33:44', 1, NULL, 1),
(1022, 1024, 29, 'tags', 1025, '2017-01-09 14:35:06', 41, '2017-01-09 14:25:25', 41, '2017-01-09 15:25:38', 4, 'schlagworte', 1),
(1023, 1022, 29, 'development', 1025, '2017-01-17 12:08:49', 41, '2017-01-09 14:26:09', 41, '2017-01-09 15:26:14', 0, 'entwicklung', 1),
(1041, 7, 29, '1041.1.8_content', 10241, '2017-01-19 00:15:44', 41, '2017-01-19 00:15:22', 41, NULL, 8, '1041.1.8_inhalt', 1),
(1032, 1020, 45, 'how-to-design-the-perfect-rest-api-part-1', 1, '2017-01-15 13:39:52', 41, '2017-01-15 13:00:33', 41, '2017-01-15 14:01:37', 1, NULL, 1),
(1026, 1, 46, 'contact', 1, '2017-01-15 07:44:56', 41, '2017-01-15 07:08:48', 41, '2017-01-15 08:09:24', 4, 'kontakt', 1),
(1027, 1020, 45, 'sleepless-in-berlin', 1, '2017-01-15 12:57:33', 41, '2017-01-15 12:22:28', 41, '2017-01-15 13:31:21', 1, NULL, 1),
(1028, 1022, 29, 'travel', 1025, '2017-01-17 12:09:01', 41, '2017-01-15 12:52:59', 41, '2017-01-15 13:53:08', 1, 'reisen', 1),
(1029, 1022, 29, 'startup', 1025, '2017-01-17 12:09:11', 41, '2017-01-15 12:53:50', 41, '2017-01-15 13:53:54', 2, NULL, 1),
(1030, 1022, 29, 'mobile', 1025, '2017-01-17 12:09:23', 41, '2017-01-15 12:54:21', 41, '2017-01-15 13:54:25', 3, 'mobil', 1),
(1031, 1022, 29, 'web', 1025, '2017-01-17 12:09:37', 41, '2017-01-15 12:54:47', 41, '2017-01-15 13:54:50', 4, NULL, 1),
(1035, 1022, 29, 'angularjs', 1025, '2017-01-17 12:10:01', 41, '2017-01-15 13:36:18', 41, '2017-01-15 14:36:21', 6, NULL, 1),
(1036, 1020, 45, 'rest-api-design-principles', 1, '2017-01-15 14:24:25', 41, '2017-01-15 14:15:16', 41, '2017-01-15 15:17:15', 3, NULL, 1),
(1037, 1022, 29, 'best-practices', 1025, '2017-01-17 12:10:13', 41, '2017-01-15 14:18:02', 41, '2017-01-15 15:20:23', 7, NULL, 1),
(1038, 1020, 45, 'how-to-design-the-perfect-rest-api-part-3', 1, '2017-01-15 14:27:20', 41, '2017-01-15 14:26:01', 41, '2017-01-15 15:27:15', 4, NULL, 1),
(1039, 1020, 45, 'angularjs-performance-tweaks', 1, '2017-01-15 14:31:01', 41, '2017-01-15 14:30:05', 41, '2017-01-15 15:30:59', 5, NULL, 1),
(1040, 1022, 29, 'javascript', 1025, '2017-01-17 12:10:27', 41, '2017-01-15 14:35:24', 41, '2017-01-15 15:35:37', 8, NULL, 1),
(1042, 1024, 29, 'skills', 1025, '2017-01-19 00:16:09', 41, '2017-01-19 00:15:58', 41, '2017-01-19 01:16:09', 1, NULL, 1),
(1043, 1024, 29, 'experience', 1025, '2017-01-19 00:17:04', 41, '2017-01-19 00:16:45', 41, '2017-01-19 01:16:52', 2, NULL, 1),
(1044, 1042, 48, 'angularjs', 1, '2017-01-19 05:04:50', 41, '2017-01-19 00:19:25', 41, '2017-01-19 01:19:30', 0, NULL, 1),
(1045, 1042, 48, 'node.js', 1, '2017-01-19 00:37:17', 41, '2017-01-19 00:37:10', 41, '2017-01-19 01:37:17', 1, NULL, 1),
(1046, 1042, 48, 'html-css', 1, '2017-01-19 00:44:56', 41, '2017-01-19 00:44:52', 41, '2017-01-19 01:44:56', 2, NULL, 1),
(1047, 1042, 48, 'javascript-typescript', 1, '2017-01-19 04:52:51', 41, '2017-01-19 00:45:15', 41, '2017-01-19 01:45:25', 3, NULL, 1),
(1048, 1042, 48, 'sharepoint', 1, '2017-01-19 04:52:15', 41, '2017-01-19 00:45:54', 41, '2017-01-19 01:46:01', 4, NULL, 1),
(1049, 1042, 48, 'electron.js', 1, '2017-01-19 04:53:43', 41, '2017-01-19 00:46:18', 41, '2017-01-19 01:46:28', 5, NULL, 1),
(1050, 1042, 48, 'ghost-cms', 1, '2017-01-19 00:46:49', 41, '2017-01-19 00:46:45', 41, '2017-01-19 01:46:49', 6, NULL, 1),
(1051, 1043, 47, 'student-and-software-developer', 1, '2017-01-19 00:56:48', 41, '2017-01-19 00:55:56', 41, '2017-01-19 01:56:48', 0, NULL, 1),
(1052, 1043, 47, 'software-developer-and-project-manager', 1, '2017-01-19 01:20:11', 41, '2017-01-19 01:19:30', 41, '2017-01-19 02:20:11', 1, NULL, 1),
(1053, 1043, 47, 'full-stack-web-developer', 1, '2017-01-19 01:20:55', 41, '2017-01-19 01:20:30', 41, '2017-01-19 02:20:55', 2, NULL, 1),
(1054, 1042, 48, 'swagger-io', 1, '2017-01-19 04:53:22', 41, '2017-01-19 04:53:15', 41, '2017-01-19 05:53:22', 7, NULL, 1),
(1055, 1043, 47, 'freelance-software-engineer', 1, '2017-01-19 05:01:44', 41, '2017-01-19 04:55:21', 41, '2017-01-19 06:00:15', 3, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages_access`
--

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages_access`
--

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES
(37, 2, '2017-01-08 11:58:01'),
(38, 2, '2017-01-08 11:58:01'),
(32, 2, '2017-01-08 11:58:01'),
(34, 2, '2017-01-08 11:58:01'),
(35, 2, '2017-01-08 11:58:01'),
(36, 2, '2017-01-08 11:58:01'),
(50, 2, '2017-01-08 11:58:01'),
(51, 2, '2017-01-08 11:58:01'),
(52, 2, '2017-01-08 11:58:01'),
(53, 2, '2017-01-08 11:58:01'),
(54, 2, '2017-01-08 11:58:01'),
(1006, 2, '2017-01-08 11:58:01'),
(1010, 2, '2017-01-08 11:58:01'),
(1012, 2, '2017-01-08 11:58:01'),
(1024, 1, '2017-01-09 14:33:29'),
(1016, 2, '2017-01-08 11:58:43'),
(1018, 2, '2017-01-08 11:59:06'),
(1019, 2, '2017-01-08 11:59:06'),
(1020, 1, '2017-01-08 13:33:47'),
(1022, 1, '2017-01-09 14:25:25'),
(1041, 2, '2017-01-19 00:15:44'),
(1033, 1, '2017-01-15 13:02:57'),
(1032, 1, '2017-01-15 13:00:33'),
(1026, 1, '2017-01-15 07:08:48'),
(1027, 1, '2017-01-15 12:22:28'),
(1028, 1, '2017-01-15 12:52:59'),
(1029, 1, '2017-01-15 12:53:50'),
(1030, 1, '2017-01-15 12:54:21'),
(1031, 1, '2017-01-15 12:54:47'),
(1034, 1, '2017-01-15 13:32:19'),
(1035, 1, '2017-01-15 13:36:18'),
(1036, 1, '2017-01-15 14:15:16'),
(1037, 1, '2017-01-15 14:18:02'),
(1038, 1, '2017-01-15 14:26:01'),
(1039, 1, '2017-01-15 14:30:05'),
(1040, 1, '2017-01-15 14:35:24'),
(1042, 1, '2017-01-19 00:15:58'),
(1043, 1, '2017-01-19 00:16:45'),
(1044, 1, '2017-01-19 00:19:26'),
(1045, 1, '2017-01-19 00:37:10'),
(1046, 1, '2017-01-19 00:44:52'),
(1047, 1, '2017-01-19 00:45:15'),
(1048, 1, '2017-01-19 00:45:54'),
(1049, 1, '2017-01-19 00:46:18'),
(1050, 1, '2017-01-19 00:46:45'),
(1051, 1, '2017-01-19 00:55:56'),
(1052, 1, '2017-01-19 01:19:30'),
(1053, 1, '2017-01-19 01:20:30'),
(1054, 1, '2017-01-19 04:53:15'),
(1055, 1, '2017-01-19 04:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `pages_parents`
--

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `parents_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages_parents`
--

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES
(2, 1),
(3, 1),
(3, 2),
(22, 1),
(22, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(29, 28),
(30, 1),
(30, 2),
(30, 28),
(31, 1),
(31, 2),
(31, 28),
(1009, 1),
(1009, 2),
(1009, 22),
(1022, 1024),
(1042, 1024),
(1043, 1024);

-- --------------------------------------------------------

--
-- Table structure for table `pages_sortfields`
--

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `page_path_history`
--

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) UNSIGNED NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `language_id` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_path_history`
--

INSERT INTO `page_path_history` (`path`, `pages_id`, `created`, `language_id`) VALUES
('/meta', 1022, '2017-01-09 14:32:55', 0),
('/meta-tags', 1022, '2017-01-09 14:34:38', 0),
('/en/meta/meta-tags', 1022, '2017-01-09 14:35:06', 0),
('/de/uber', 1001, '2017-01-13 13:52:07', 1012),
('/about', 1001, '2017-01-13 13:52:07', 0),
('/de/kontaktanfrage', 1026, '2017-01-15 07:11:09', 1012),
('/contact-request', 1026, '2017-01-15 07:11:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `session_login_throttle`
--

DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_attempt` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session_login_throttle`
--

INSERT INTO `session_login_throttle` (`name`, `attempts`, `last_attempt`) VALUES
('sascha', 1, 1484783079);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES
(2, 'admin', 2, 8, 0, '{"useRoles":1,"parentTemplates":[2],"allowPageNum":1,"redirectLogin":23,"slashUrls":1,"noGlobal":1,"compile":3,"modified":1483876354,"ns":"ProcessWire"}'),
(3, 'user', 3, 8, 0, '{"useRoles":1,"noChildren":1,"parentTemplates":[2],"slashUrls":1,"pageClass":"User","noGlobal":1,"noMove":1,"noTrash":1,"noSettings":1,"noChangeTemplate":1,"compile":3,"nameContentTab":1,"modified":1484313886}'),
(4, 'role', 4, 8, 0, '{"noChildren":1,"parentTemplates":[2],"slashUrls":1,"pageClass":"Role","noGlobal":1,"noMove":1,"noTrash":1,"noSettings":1,"noChangeTemplate":1,"nameContentTab":1}'),
(5, 'permission', 5, 8, 0, '{"noChildren":1,"parentTemplates":[2],"slashUrls":1,"guestSearchable":1,"pageClass":"Permission","noGlobal":1,"noMove":1,"noTrash":1,"noSettings":1,"noChangeTemplate":1,"nameContentTab":1}'),
(1, 'home', 1, 0, 0, '{"useRoles":1,"noParents":1,"slashUrls":1,"compile":3,"label":"Home","modified":1484803910,"ns":"ProcessWire","label1012":"Zuhause","roles":[37]}'),
(29, 'basic-page', 83, 0, 0, '{"slashUrls":1,"compile":3,"label":"Basic Page","modified":1484802196,"ns":"ProcessWire","label1012":"Grund Seite"}'),
(26, 'search', 80, 0, 0, '{"noChildren":1,"noParents":1,"allowPageNum":1,"slashUrls":1,"compile":3,"label":"Search","modified":1484804496,"ns":"ProcessWire","label1012":"Suche"}'),
(48, 'skills', 102, 0, 0, '{"noChildren":1,"slashUrls":1,"compile":3,"label":"Skills","modified":1484785249,"label1012":"F\\u00e4higkeiten"}'),
(43, 'language', 97, 8, 0, '{"parentTemplates":[2],"slashUrls":1,"pageClass":"Language","pageLabelField":"name","noGlobal":1,"noMove":1,"noTrash":1,"noChangeTemplate":1,"noUnpublish":1,"nameContentTab":1,"modified":1409651146}'),
(47, 'work-experience', 101, 0, 0, '{"slashUrls":1,"compile":3,"label":"Work Experience","modified":1484787451,"label1012":"Arbeitserfahrung"}'),
(44, 'blog', 98, 0, 0, '{"noParents":-1,"childTemplates":[45],"allowPageNum":1,"slashUrls":1,"compile":3,"label":"Blog","modified":1484657035,"ns":"ProcessWire"}'),
(45, 'post', 99, 0, 0, '{"noChildren":1,"parentTemplates":[44],"slashUrls":1,"compile":3,"label":"Post","modified":1484652326,"ns":"ProcessWire"}'),
(46, 'contact', 100, 0, 0, '{"slashUrls":1,"compile":3,"modified":1484570393,"ns":"\\\\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caches`
--
ALTER TABLE `caches`
  ADD PRIMARY KEY (`name`),
  ADD KEY `expires` (`expires`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `fieldgroups_fields`
--
ALTER TABLE `fieldgroups_fields`
  ADD PRIMARY KEY (`fieldgroups_id`,`fields_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `field_body`
--
ALTER TABLE `field_body`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(255));
ALTER TABLE `field_body` ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_body` ADD FULLTEXT KEY `data1012` (`data1012`);

--
-- Indexes for table `field_date`
--
ALTER TABLE `field_date`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indexes for table `field_email`
--
ALTER TABLE `field_email`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`);
ALTER TABLE `field_email` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_headline`
--
ALTER TABLE `field_headline`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(255)),
  ADD KEY `data_exact1012` (`data1012`(255));
ALTER TABLE `field_headline` ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_headline` ADD FULLTEXT KEY `data1012` (`data1012`);

--
-- Indexes for table `field_images`
--
ALTER TABLE `field_images`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`);
ALTER TABLE `field_images` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `field_language`
--
ALTER TABLE `field_language`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indexes for table `field_language_files`
--
ALTER TABLE `field_language_files`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`);
ALTER TABLE `field_language_files` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `field_language_files_site`
--
ALTER TABLE `field_language_files_site`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`);
ALTER TABLE `field_language_files_site` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `field_pass`
--
ALTER TABLE `field_pass`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indexes for table `field_permissions`
--
ALTER TABLE `field_permissions`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indexes for table `field_process`
--
ALTER TABLE `field_process`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indexes for table `field_quantity`
--
ALTER TABLE `field_quantity`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indexes for table `field_roles`
--
ALTER TABLE `field_roles`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indexes for table `field_subtitle`
--
ALTER TABLE `field_subtitle`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250)),
  ADD KEY `data_exact1012` (`data1012`(250));
ALTER TABLE `field_subtitle` ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_subtitle` ADD FULLTEXT KEY `data1012` (`data1012`);

--
-- Indexes for table `field_summary`
--
ALTER TABLE `field_summary`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(255));
ALTER TABLE `field_summary` ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_summary` ADD FULLTEXT KEY `data1012` (`data1012`);

--
-- Indexes for table `field_tags`
--
ALTER TABLE `field_tags`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indexes for table `field_title`
--
ALTER TABLE `field_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(255)),
  ADD KEY `data_exact1012` (`data1012`(255));
ALTER TABLE `field_title` ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_title` ADD FULLTEXT KEY `data1012` (`data1012`);

--
-- Indexes for table `field_vacation`
--
ALTER TABLE `field_vacation`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  ADD UNIQUE KEY `name1012_parent_id` (`name1012`,`parent_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `templates_id` (`templates_id`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `status` (`status`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `pages_access`
--
ALTER TABLE `pages_access`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `templates_id` (`templates_id`);

--
-- Indexes for table `pages_parents`
--
ALTER TABLE `pages_parents`
  ADD PRIMARY KEY (`pages_id`,`parents_id`);

--
-- Indexes for table `pages_sortfields`
--
ALTER TABLE `pages_sortfields`
  ADD PRIMARY KEY (`pages_id`);

--
-- Indexes for table `page_path_history`
--
ALTER TABLE `page_path_history`
  ADD PRIMARY KEY (`path`),
  ADD KEY `pages_id` (`pages_id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `session_login_throttle`
--
ALTER TABLE `session_login_throttle`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fieldgroups_id` (`fieldgroups_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1056;
--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
