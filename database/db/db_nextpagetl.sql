-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2018 at 10:15 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_nextpagetl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `firstname`, `lastname`, `password`, `image`, `role_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'nextpagetl@gmail.com', 'Next', 'Page', '$2y$12$9zcmQS8PxgUs/1DuZQ3A6.acpF1Ag84kKhDCsX5P5WfALdsRTMNMa', '7161adbcac49abc7f2a6fa43971897fc056e3ef141e683fb246bc6083a7d8d3d8a14fecc4a0524dcacfc99969da380c654f0b86711104e7017cc2e4f8d2d773a_1.png', 1, 1, 'E4UxFxQuCZbWvNQQyZYRa7YELrUb43hSb8hQXJsEtGrE2nMe1VOTHHLSsqBR', NULL, '2018-12-11 07:04:57'),
(5, 'joysaha544', 'joysaha544@gmail.com', 'Shah', 'Alom', '$2y$10$JffisBG7jwAmyZp2/G4vDOJi72Wn0q1Ck6.hFwENjyvGLyqiLoaAm', 'images.png', 1, 1, 'eBblkydMkYLNO5nwlntzBBApP4CzNFZ6qe5stMIXx7rZ0kUkthRzq7qeXWXC', '2017-10-31 05:57:30', '2018-03-15 04:49:15'),
(6, 'editor', 'editor@getwebinc.com', 'Editor', 'Editor', '$2y$10$/QezDbEBFV0Q2FI.hLL2oOWG.fvDpFIfZH8rJNnguCUIj6dgLW6U.', 'images.png', 6, 1, 'go6DjjOtGqidYJQcpgsVdmQPUc6fHPxVB8Hhfa2GKkuJd0dtte0giVooFnVc', '2018-01-09 02:09:39', '2018-03-15 04:49:37'),
(7, 'abrasel600', 'abrasel600@gmail.com', 'Abdur', 'Rasel', '$2y$10$lYL4rbctn1VHgOvurvkjYeWfooISXmWOWkoXG03hffNWKLOy2S9Yu', 'images.png', 6, 1, 'COehg70h3giwJDzqT1H9Q7Z9qMHdK6dPSC9Zoj1kd0S9c1dAyb1MXnpDRteg', '2018-03-02 21:48:39', '2018-03-15 04:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `admins_metas`
--

CREATE TABLE `admins_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins_metas`
--

INSERT INTO `admins_metas` (`id`, `admin_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'user_online_status', '1', '2017-10-30 00:54:29', '2018-12-11 19:14:38'),
(2, 1, 'user_last_activity', '2018-12-11 11:51:41', '2017-10-30 01:01:49', '2018-12-11 18:51:41'),
(28, 5, 'mobile', '1715892032', '2017-10-31 05:57:30', '2017-10-31 05:57:30'),
(29, 5, 'gender', NULL, '2017-10-31 05:57:31', '2017-10-31 05:57:31'),
(30, 5, 'skype', NULL, '2017-10-31 05:57:31', '2017-10-31 05:57:31'),
(31, 5, 'whats_app', '01715892032', '2017-10-31 05:57:31', '2017-10-31 05:57:31'),
(32, 5, 'street', 'mirpur', '2017-10-31 05:57:31', '2017-10-31 05:57:31'),
(33, 5, 'city', 'dhaka', '2017-10-31 05:57:31', '2017-10-31 05:57:31'),
(34, 5, 'zip', '1230', '2017-10-31 05:57:31', '2017-10-31 05:57:31'),
(35, 5, 'country', 'Bangladesh', '2017-10-31 05:57:31', '2017-10-31 05:57:31'),
(36, 5, 'extra_note', NULL, '2017-10-31 05:57:31', '2017-10-31 05:57:31'),
(37, 1, 'mobile', '01715892032', '2017-12-05 06:09:51', '2018-03-12 21:25:16'),
(38, 1, 'gender', 'Male', '2017-12-05 06:09:51', '2018-03-11 22:14:01'),
(39, 1, 'skype', 'smddtech', '2017-12-05 06:09:51', '2017-12-05 06:09:51'),
(40, 1, 'whats_app', '01715892032', '2017-12-05 06:09:51', '2017-12-05 06:09:51'),
(41, 1, 'street', '486 3rd floor, Greenway, wireless Gate, Moghbazar, asdf, asdf', '2017-12-05 06:09:51', '2017-12-05 06:09:51'),
(42, 1, 'city', 'Dhaka', '2017-12-05 06:09:51', '2017-12-05 06:09:51'),
(43, 1, 'state', 'Dhaka', '2017-12-05 06:09:51', '2017-12-05 06:09:51'),
(44, 1, 'zip', '1217', '2017-12-05 06:09:52', '2017-12-05 06:09:52'),
(45, 1, 'country', 'Bangladesh', '2017-12-05 06:09:52', '2017-12-05 06:09:52'),
(46, 1, 'extra_note', NULL, '2017-12-05 06:09:52', '2017-12-05 06:09:52'),
(47, 5, 'state', 'Dhaka', '2017-12-19 03:13:02', '2017-12-19 03:13:02'),
(48, 5, 'user_online_status', '1', '2017-12-19 03:13:15', '2018-04-05 06:50:49'),
(49, 5, 'user_last_activity', '2018-01-06 12:10:20', '2017-12-19 03:19:46', '2018-01-06 06:10:20'),
(50, 6, 'mobile', '01715892032', '2018-01-09 02:09:39', '2018-01-09 02:09:39'),
(51, 6, 'gender', 'Male', '2018-01-09 02:09:39', '2018-01-09 02:09:39'),
(52, 6, 'skype', NULL, '2018-01-09 02:09:39', '2018-01-09 02:09:39'),
(53, 6, 'whats_app', NULL, '2018-01-09 02:09:39', '2018-01-09 02:09:39'),
(54, 6, 'street', '486 3rd floor, Greenway, wireless Gate, Moghbazar, asdf, asdf', '2018-01-09 02:09:39', '2018-01-09 02:09:39'),
(55, 6, 'city', 'Dhaka', '2018-01-09 02:09:39', '2018-01-09 02:09:39'),
(56, 6, 'zip', '1230', '2018-01-09 02:09:40', '2018-01-09 02:09:40'),
(57, 6, 'country', 'Bangladesh', '2018-01-09 02:09:40', '2018-01-09 02:09:40'),
(58, 6, 'extra_note', NULL, '2018-01-09 02:09:40', '2018-01-09 02:09:40'),
(59, 6, 'user_online_status', '0', '2018-03-01 05:06:52', '2018-03-01 05:07:21'),
(60, 6, 'user_last_activity', '2018-03-01 11:07:22', '2018-03-01 05:07:22', '2018-03-01 05:07:22'),
(61, 7, 'mobile', '1755167600', '2018-03-02 21:48:39', '2018-03-02 21:48:39'),
(62, 7, 'gender', 'Male', '2018-03-02 21:48:39', '2018-03-15 04:37:15'),
(63, 7, 'skype', NULL, '2018-03-02 21:48:39', '2018-03-02 21:48:39'),
(64, 7, 'whats_app', NULL, '2018-03-02 21:48:39', '2018-03-02 21:48:39'),
(65, 7, 'street', 'Mirpur', '2018-03-02 21:48:40', '2018-03-02 21:48:40'),
(66, 7, 'city', 'Dhaka', '2018-03-02 21:48:40', '2018-03-02 21:48:40'),
(67, 7, 'zip', '1209', '2018-03-02 21:48:40', '2018-03-02 21:48:40'),
(68, 7, 'country', 'Bangladesh', '2018-03-02 21:48:40', '2018-03-02 21:48:40'),
(69, 7, 'extra_note', NULL, '2018-03-02 21:48:40', '2018-03-02 21:48:40'),
(70, 7, 'user_online_status', '1', '2018-03-02 21:49:17', '2018-04-06 15:24:16'),
(71, 7, 'user_last_activity', '2018-04-06 03:23:19', '2018-03-02 21:49:45', '2018-04-06 15:23:19'),
(72, 7, 'state', 'Dinajpur', '2018-03-15 04:37:15', '2018-03-15 04:41:02'),
(73, 6, 'state', 'Dhaka', '2018-03-15 04:49:37', '2018-03-15 04:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `long_description` longtext COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sticky` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment_enable` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `short_description`, `long_description`, `image`, `slug`, `is_sticky`, `comment_enable`, `comments`, `views`, `likes`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(9, 'How to Get or Attract Traffic on Social Media?', 'Getting social media traffic is more of a set of disciplined actions than just a particular objective. It requires proper plan with strategic approaches, and the combination of the right skills.', '<h2>Social Media Traffic Generation</h2>\r\n\r\n<p>One of the top challenges that today&rsquo;s B2B marketers undergo nowadays is leveraging social media traffic. Because you can consider social media as one of your first priorities for traffic, you have to invest the most of your time and efforts to get the most of it. You might provide some updates or come up with occasional tweets. But, that&rsquo;s not going to be enough, especially when you want to move the dial of your call and convey your appeal to the intended audiences.</p>\r\n\r\n<p>So, here are the finest techniques you can adopt to excel in drawing and gathering social media traffic, quality of course.</p>\r\n\r\n<h3>The Might of The Link/CTA:</h3>\r\n\r\n<p>It may seem obvious, but always include a link/CTA back to your website. It not only drives traffic but shows your reader what to do next. No matter how much someone likes your brand, if you don&#39;t ask them to visit your website, give them a compelling reason to, and make it easy, they are not likely to do it. So, always user social media as a teaser and include a website link for more information.</p>\r\n\r\n<p>Doing this may be difficult on platforms like Instagram and Vine, but you can always change and direct people to the link in your bio as companies like HubSpot do.</p>\r\n\r\n<h3>The Power of Images:</h3>\r\n\r\n<p>It is crucial to use images in your social media posts when sharing content, especially now that the majority of social media users are on mobile devices. Images are more eye-catching than text alone and they also take up more room in the timeline, helping you attract more attention. Also, the right image can help prospects visualize what the content is going to be about while also making a post more &quot;shareable.&quot;</p>\r\n\r\n<h3>Integration of Social Share Buttons:</h3>\r\n\r\n<p>It&#39;s great when you can drive a lot of social media traffic, but it&#39;s even better when other people do it for you. If your website doesn&#39;t already have social sharing buttons, you could be missing out on a lot of social media traffic that&#39;s generated from people already reading your blog!</p>\r\n\r\n<p>Social sharing buttons are those colorful buttons you see around the top or bottom of blog posts that allow you to share the page directly on the social media channel of your choice. They provide convenience to your buyer persona and act as a non-pushy tool that encourages social sharing.</p>\r\n\r\n<h3>Paid Promotion:</h3>\r\n\r\n<p>You may call it the step of Sponsored Content. The quickest way to drive more traffic from social media is through paid promotion. When you&#39;re executing on a solid social media strategy, paid promotion or &quot;sponsored content&quot; adds fuel to the fire. You can experiment with different targeting options (including location, gender, industry and interests on most profiles) to help expose new people to your content and promote new social media traffic.</p>\r\n\r\n<p>As the business models of social media platforms evolve, B2B marketers will likely have to pay to be seen. Facebook has been this way for a few years now and with the recent introduction of algorithmic timelines on Twitter and Instagram, this is likely a trend to continue.</p>\r\n\r\n<h3>Activity and Engagement:</h3>\r\n\r\n<p>Too many B2B brands are guilty of not updating their social media enough. The only way to keep your followers engaged is to post updates and interact with people on a regular basis. Otherwise, they are likely to forget about you.</p>\r\n\r\n<p>When we tell B2B marketers they aren&#39;t active enough on social media, their minds immediately picture a teenage girl glued to her phone as she posts non-stop selfies and updates on her every movement. We then assure them that being active doesn&#39;t require you to dedicate your life to social media.</p>\r\n\r\n<h3>Consistency:</h3>\r\n\r\n<p>If you study the B2B brands with the best marketing, you&#39;ll notice they are always consistent with their social media activity. Regularly posting high-quality, interesting content, and responding to comments keeps your page lively and engaging rather than a one-sided conversation.</p>\r\n\r\n<p>Honestly speaking, gathering social media traffic is a unified approach that stands on a set of tasks and a clear orientation. Once you can handle the above steps; you can certainly expect great outcomes.</p>', 'blog-thumbnail-5.jpg', 'how-to-get-or-attract-traffic-on-social-media', 0, 1, 0, 116, 0, 'Proven Techniques To Get Social Media Traffic | Latest Insights', 'Social media traffic', 'Different marketers put different efforts to come out successful in gathering Social media traffic. Use of CTA, images, paid promotion, consistency, etc. are useful. Learn more about social media traffic.', 1, 1, 1, '2018-03-15 00:26:29', '2018-12-10 22:46:07'),
(10, 'How To Viral A Video?', 'It always feels good to have created a video, performed some modifications and shared. As we you need to make a video viral, all you have to do is stick to some fundamental matters.', '<h2>Steps Required to Viral A Video</h2>\r\n\r\n<p>Do you want to make a video so popular that you can call it a viral piece? Then, read the following lines with patience.</p>\r\n\r\n<p>You have the right recipe with the right type and amount of ingredients. With all these in place, the only thing you can expect that the entire culinary process will become easier. The first few times you take an approach to get the cooking right will be challenging and so misleading that you have to wait for some time. So, you want to make a video viral?</p>\r\n\r\n<p>Let&rsquo;s get straight to the real business.</p>\r\n\r\n<h3>Keep your video sweet and short.</h3>\r\n\r\n<p>Short videos are good to become inspirational, educative, and engaging. For longer videos, you need to consider why you are going to spend so much of your time on something that is expensive and potentially not so effective for your purposes. But, it does not mean that longer videos are just bad. They are equally and sometimes more beneficial just when you are sure the video has a real value to offer your customers or viewers. Thus, you take the initial steps right to make a video viral.</p>\r\n\r\n<h3>Work to spread a single message.</h3>\r\n\r\n<p>Content that sounds simple, demonstrates clear, and feels succinct are really wonderful. For a high conversion copy or landing page, it is substantial. For a blog article that is super shareable, it is even more credible. For a potentially viral video, the fact is not only true but also compelling. Move ahead with a single message. Do not confuse your viewers with multiple messages which they find difficult to connect or understand.</p>\r\n\r\n<p>Make the title short, interesting, and symmetrical to your brand&rsquo;s purposes. Attention! About 50% of all video marketers fail to use a title that works. Use trendy, relevant keywords to optimize the video for search engines and video platforms like YouTube, Dailymotion, etc.</p>\r\n\r\n<h3>Offer value.</h3>\r\n\r\n<p>Nothing works better than something in the world of the Internet that provides value. Create videos that are intrinsically useful to people who you consider as your audience. No matter if you are trying to inform, educate or entertain. Adding values should be your central focus.</p>\r\n\r\n<h3>Be wary of format.</h3>\r\n\r\n<p>Increase the likelihood of your video&rsquo;s being viral by optimizing and modifying it for mobile devices and social sharing. The right format is critical to the acceptance of your videos on social media platforms. Be sure to keep the video at optimal resolutions with great sound. However, do not allow bigger file size.</p>\r\n\r\n<h3>Thumbnails matter.</h3>\r\n\r\n<p>A catchy thumbnail satisfies the curiosity and simultaneously draws the attention of thousands of your potential viewers. Don&rsquo;t fake this chance. A lot of video makers or spammy marketers use incorrect or duplicate thumbnails that ultimately end in the loss of genuine subscribers or future customers. Try to make thumbnail become the essence of your video so that viewers do not have to wait to get a grasp of what you are going to show them. It&rsquo;s a compulsion if you have to make a video viral.</p>\r\n\r\n<h3>Be careful about the use of text.</h3>\r\n\r\n<p>Some unconscious video marketers use text, compelling though, so unwisely that viewers feel distracted by the text. Sometimes, the text, even though it&rsquo;s useful, does not look clear. Remember, the text does not look great on some screens. Try to avoid using content this way. If you have to do it anyway, be serious about making a transition between the text and video content, so viewers do not feel like being lost in either of them.</p>\r\n\r\n<p>Remember that you can never know how long it will take you to make a video viral. But, you go through trials and errors while sticking to the job, and that&rsquo;s what is going to work in the end.</p>', 'blog-thumbnail-3.jpg', 'how-to-viral-a-video', 0, 0, 0, 2, 0, 'Fundamental Steps To Make A Video Viral | Learn How To Viral A Video', 'Make a video viral', 'For those trying to make a video viral, the key aspects include the making of short videos with valuable content, great title, and audio and an amazingly descriptive thumbnail. Learn more about a viral video!', 1, 1, 1, '2018-03-20 03:57:01', '2018-10-31 08:31:56'),
(11, 'Is Social Media Changing Our Lifestyle?', 'Social media platforms have been so active in our day-to-day life that we can barely think of going a day without the different channels of social media. Some are good and some are not.', '<h2>Effects of Social Media on Our Life</h2>\r\n\r\n<p>In a word, YES.</p>\r\n\r\n<p>Billions of people across the countries of the world are using one or another social media network every day. A large portion of them use the networks for just one purpose called socializing. Another fair share of the users is working to make a living using the platforms. The multifaceted uses of different social networks are the reasons why these virtual platforms are being overwhelmingly popular.</p>\r\n\r\n<p>People are talking, sharing, showing, working, and meeting on these media. Why wouldn&rsquo;t we even raise a debate whether or not social media is affecting our way of life? The only question that befits this context is how.</p>\r\n\r\n<p>In short, IN MANY WAYS. Keep reading&hellip;&hellip;</p>\r\n\r\n<p>&ldquo;NICE to have&rdquo; is an obsolete idea.</p>\r\n\r\n<p>If you look at a business that has its own vision, you will see social networks has gained a much higher position in the operational strategy of that business. Once, businesses used to feel that having access to a great media like Facebook or Twitter is good. Ask them the same question. The likely reply is going to be like this, &ldquo;Having a familiarity on any virtual network is an essential thing to ensure.&rdquo; So, nothing surprising the fact should be if you hear that your friend, once a Facebook enthusiast, has built a great career.</p>\r\n\r\n<p>&ldquo;BANKS of future&rdquo; is not a thing of the distant future.</p>\r\n\r\n<p>The ultimate thing first!</p>\r\n\r\n<p>It won&rsquo;t be an unbelievable thing to know that these networks are going to have an impact on people&rsquo;s prospects to get a loan. Banking relationships are being heavily transformed by these media. Think about customer service or online money transactions. Many things from &lsquo;this&rsquo; to &lsquo;that&rsquo; of the financial landscape have a greater chance of being transformed, and social media will likely be the major player.</p>\r\n\r\n<p>&ldquo;Change in HEALTHCARE delivery&rdquo; is only a matter of time.</p>\r\n\r\n<p>If you ask which factor outside the public health domain is mostly responsible for the changes in healthcare in recent times, the interference of social media is the only answer we have found after comprehensive research sessions. A large number of people find social channels convenient and proactive to share their information quite rapidly.</p>\r\n\r\n<p>Health experts may not be available all the time. Social platforms being two-way places allow nonmedical persons to share what they know about a particular health condition. However, there are controversies regarding the authenticity of information shared by non-experts.</p>\r\n\r\n<p>Although this transmission of information seems positive, it is not free of its setback. Such an opportunity ushers the flow of misinformation. But, health agencies can always take countermeasures to tackle the situation. Proper plan to share information and stop the flow of wrong information can be the priority of health agencies to be of help to the community dependent on them.</p>\r\n\r\n<p>&ldquo;The new home to GOVERNANCE&rdquo; is real.</p>\r\n\r\n<p>Social media has transformed civic engagement and participation. Citizens can become the initial source of plans, initiatives, and ideas in a more interactive way than before. More and more influential people and leaders are expected to embrace transparent governance as social channels have made it easy for them to interact and cooperate with their constituents.</p>\r\n\r\n<p>In addition, social media is consistently aiding us in responding more promptly to different calamities and disasters. Human rights violations are now being watched across the globe without the interreference of conventional news media. Thus, social media platforms are having remarkable impacts upon the continual changes in our lifestyle.</p>', 'blog-thumbnail-6.jpg', 'is-social-media-changing-our-lifestyle', 0, 0, 0, 8, 1, 'The Way Social Media Platforms Affect How Live & Interact', 'Social media', 'Social media is getting impeccably popular due to their influences upon the way people live, socialize, work, and cooperate with their close associates. Learn more about social media impact upon human lives!', 1, 1, 1, '2018-03-20 04:00:35', '2018-12-11 03:45:11'),
(12, 'Press Releases for Marketing: Pros & Cons', 'Press releases are not a new addition to the marketing avenue. It has its merits and demerits. So, every marketer needs to be aware of them before adopting a particular PR strategy.', '<h2>Press Releases: Should or Shouldn&rsquo;t?</h2>\r\n\r\n<p>As soon as you have decided to actualize a public relation strategy for your business, it is time to give these publications a serious thought. Press releases are a powerful tool to help spread your message across a broad group of audience.</p>\r\n\r\n<p>Press releases for marketing are no unmixed blessings but one of the conventional ways to initiate the launch of a product or service.</p>\r\n\r\n<h3>Advantages of Press Releases:</h3>\r\n\r\n<h4>As a conveyer of your message:</h4>\r\n\r\n<p>You want your news to reach out front to people with press release distribution. For many businesses, it has been possible to earn success by submitting a press release to the famous wire and make sure its submission to numerous publications, and then reposting to other online locations.</p>\r\n\r\n<h4>As a contributor to link building:</h4>\r\n\r\n<p>Press releases for marketing help build links. Even when a small press release does not necessarily help with SEO, the editorial coverage that you get from them will bring great benefits to your SEO. Ensure that you include keywords that you want to rank for your releases. So, when journalists see the release, they will include some of these keywords, particularly if they pull quotable snippets form you to include in their coverage.</p>\r\n\r\n<h4>As an information hub for journalists:</h4>\r\n\r\n<p>Press releases help journalists check information. When you make a press release, all the information you want journalists to know about your business is in one place. Even external documents, like research documents and presentations, are available in a press release, making it easy for journalists to find and accurately reference all the information they need to write their story about you.</p>\r\n\r\n<h4>As something to your message like what a refinery to a winery:</h4>\r\n\r\n<p>Press releases refine your messaging. As you put your press release together, you need to ensure that you have nailed the message for the announcement to ensure maximum exposure. It is the place everyone will go to get the story and cite important data points. Once you have refined the message of your release, you are giving the right message for all other content creators to draw upon.</p>\r\n\r\n<h3>Disadvantages of Press Releases:</h3>\r\n\r\n<h4>No help for your SEO:</h4>\r\n\r\n<p>Press releases for marketing may not be directly helpful to your SEO. They can only help SEO if there is added editorial content published as a result of your press release. However, despite popular belief that press releases help your SEO efforts, they actually will not help as much as you think. Google experts say that verifying your SEO ranking in Google will not increase once a press release is posted.</p>\r\n\r\n<h4>Poor potentiality for outreach:</h4>\r\n\r\n<p>Press releases will not improve your communication with customers. Press releases might get the attention of journalists, but it is very unlikely that it will reach your target audience. Customers like to read information in a way that feels natural and is easy to digest, like blog posts or news stories. The press release template takes longer to read and is usually harder to understand.</p>\r\n\r\n<h4>No measurable success:</h4>\r\n\r\n<p>Press releases are hard to measure. Data is the main method marketers prove success to the rest of their department and business. However, unlike others parts of your marketing strategy, press releases are very hard to measure, so it is hard to prove if they are successful or not.</p>\r\n\r\n<h4>Not cost-effective:</h4>\r\n\r\n<p>Press releases are not cost-effective. Posting a single press release can cost hundreds (even thousands) of dollars. Most of the time, they are not picked up by journalists and are just reposted on other websites. They have become a little outdated as public relation relies more on building relationships with the media instead of sending press releases to journalists you might not even know.</p>\r\n\r\n<p>Despite all these setbacks, press releases for marketing were important, is still and will be useful if businesses know how to create and spread them across the right channels.</p>', 'blog-thumbnail-4.jpg', 'press-releases-for-marketing-pros-cons', 0, 0, 0, 11, 2, 'Should Your Brand Count On Press Releases For Marketing?', 'Press releases for marketing', 'Businesses and organizations have been using press releases for marketing for several decades while enjoying both their benefits and some clear drawbacks. Learn more about press releases for marketing!', 1, 1, 1, '2018-03-20 04:06:59', '2018-11-01 22:57:34'),
(13, 'Want to know about Twitter Ads?', 'Twitter ads are a wonderful way to boost your online marketing using social media strategies. However, there are techniques and expenses involved which are crucial to your success.', '<h2>Fast Facts About Twitter Ads</h2>\r\n\r\n<p>Twitter has currently over 330 million monthly users including 100 million daily active users who send 500 million tweets every 24 hours. Twitter is a social platform used to get the latest news and trends from around the world. Businesses can take advantage of Twitter advertisements to gain more followers for brand awareness, to drive people to their website, and to generate leads!</p>\r\n\r\n<h3>Growth of a Follower Base:</h3>\r\n\r\n<p>Twitter Ads can be run strictly to gain more followers and to build a community base online. Followers have a chance to engage with a business and vice versa. Twitter followers cannot only share a businesses&rsquo; content with their friends, but they can also make purchases online. A small business study was conducted in 2014, which found that Twitter followers could help achieve substantial sales and reach for a business.</p>\r\n\r\n<p>Once an account starts to gain more followers, it is essential that the business engage with them. Some of the popular ways to engage with an audience is to ask open-ended questions that can lead to a conversation. Another way to interact with followers is to post about real time trends so that followers have something to relate to. New Belgium Brewing Company did an excellent job of creating an ad during &ldquo;Shark Week&rdquo; to capture more followers and become a part of the conversation.</p>\r\n\r\n<h3>Traffic Gathering:</h3>\r\n\r\n<p>Twitter allows businesses to reach a specific audience tailored to a target demographic. When it comes to Twitter Ads, target people by location, gender, keywords, followers, interest, behaviors and more! Location can be broken down by country, state, and postal code. This allows even small local businesses to take advantage of advertisements to reach their target audience.</p>\r\n\r\n<p>Another feature advertisers need to take advantage of is to add keywords. Twitter allows advertisers to add keywords to target searches or users that may need your product or service. For example, a local coffee shop could target ads specifically to people that are tweeting about coffee. Twitter allows advertisers to add broad match, phrase match, negative unordered match, and negative phrase match keywords. The keyword match type is very similar to the types of keywords used for a SEM Campaign.</p>\r\n\r\n<p>Another Twitter ads feature that must not be overlooked is the &ldquo;Add Followers&rdquo; feature. This feature allows a business to add followers that may be interested in its products or services. Advertisers may also add competitors&rsquo; twitter handles to try to reach their following.</p>\r\n\r\n<h3>Lead Generation:</h3>\r\n\r\n<p>At the end of the day what do all businesses want to achieve from ads? LEADS! Twitter allows businesses to add a Lead Generation Card to a promoted tweet, which allows users to share their contact information so a business can connect with them later. Getting an email address from a potential consumer can help with the success of an email marketing campaign. In order to get an email address from a consumer, the business must first make engaging content or do an exclusive offer to make people feel special.</p>\r\n\r\n<p>Twitter, like many other social media platforms, lets businesses run advertisements to reach an audience likely to have an interest in their business. It is important that businesses take advantage of Twitter ads as they are an easy way to increase brand awareness while also generating more leads and driving traffic to their website.</p>', 'blog-thumbnail-1.jpg', 'want-to-know-about-twitter-ads', 0, 0, 0, 43, 1, 'What Businesses and Brands Need To Know About Twitter Ads?', 'Twitter Ads', 'Businesses in the modern era have numerous ways like Twitter ads to advertise their services and utilities. Twitter ads contribute to the growth of your customer base. But how? Learn more!', 1, 1, 1, '2018-03-20 04:12:18', '2018-12-11 04:02:13'),
(14, 'What Is Tiered Backlink?', 'Tiered backlinks are still alive with some notable changes in the way they would affect the potential of a website’s gathering traffic. These backlinks if done appropriately work wonder.', '<h2>Tiered Backlink Explained</h2>\r\n\r\n<p>For those struggling to get a higher rank and receive an increasing quantity of traffic to a website, tiered backlink can be a magical thing to get busy with. Neither too simple nor too complicated, the strategy is not beyond anyone&rsquo;s measures.</p>\r\n\r\n<p>In lieu of building websites that link back to you (low authority websites) for the sole purpose of building backlinks, you use guest posts on authoritative websites to link back to another guest post written by you in the same niche.</p>\r\n\r\n<p>You may be asking &ldquo;Where does my website link appear in all this story?&rdquo;</p>\r\n\r\n<p>We will get there.</p>\r\n\r\n<p>In the first tier, you will mention your website. However, the second tier will only strengthen the first one to make the backlink to your website stronger.</p>\r\n\r\n<p>Instead of building two backlinks, you build just one &ndash; a quite powerful one, at that.</p>\r\n\r\n<p>There are many things to be said about tiered link building, so let&rsquo;s get to it!</p>\r\n\r\n<h3>What do we not call tiered backlink building?</h3>\r\n\r\n<p>You are probably thinking to yourself, &ldquo;I don&rsquo;t need to wreck my nerves trying to find authoritative websites and then get rejected because my content is not good enough. You could just use the old trick: buy expired domains and then create content on those websites that will strengthen each other, and then point the first tier to my website.&rdquo;</p>\r\n\r\n<p>You are right. You could do that. But that is a black hat technique that will get you penalized.</p>\r\n\r\n<p>Creating websites that you use as tiers is not white hat tiered link building, and it most likely buries your website on page 10. If you want to rank higher, you will have to be able to produce high-quality content that is accepted by authoritative websites in your niche. That is the secret to tiered link building.</p>\r\n\r\n<p>Tiered link building is all about guest posting on authoritative websites. You choose your first tier and the other websites point at it, while only the first-tier points at you. This is a white hat technique that can put you on the first page of Google when done properly.</p>\r\n\r\n<h3>From a black hat perspective:</h3>\r\n\r\n<p>You&rsquo;re not doing anyone any harm. You aren&rsquo;t wasting electricity for something useless like spamming either.</p>\r\n\r\n<p>Your tier 2 posts are helping the owners of those sites.</p>\r\n\r\n<p>By building contextual links to your high-quality tier 1 guest posts, you&rsquo;ll please the site&rsquo;s in which you posted those posts, as you&rsquo;ll not be the only person benefiting from that as those links will help drive the overall Domain Authority of those domains higher.</p>\r\n\r\n<p>Your content helps three parties in total: you, your tier 1 sites, your tier 2 sites.</p>\r\n\r\n<h3>How to find websites who are interested in your content?</h3>\r\n\r\n<p>An easy way to find your first tier is to look at Google trends in your niche. You could also perform a keyword search and pick between the first websites ranking for that keyword.</p>\r\n\r\n<p>The first tier must be the most powerful. The second should have a domain authority ranked at least 30.</p>\r\n\r\n<p>Keep in mind that in tiered link building the second website strengthens the first, and only the first has a link back to your website.</p>\r\n\r\n<p>There are several ways to approach tiered backlink building. You can search for broken links in those websites and promise to replace them with working links to your content.</p>\r\n\r\n<p>You can create an infographic that goes well with their content and then add a description to it which contains your link on your first tier.</p>\r\n\r\n<p>There are several approaches to guest posting. But no matter what you do, provide value. It makes the website owner you are pitching to happy, it makes Google happy, and it probably makes you smile too.</p>\r\n\r\n<p>AND, this is probably the logical conclusion to a primary overview of tiered backlinks.</p>', 'blog-details-1.jpg', 'what-is-tiered-backlink', 0, 0, 0, 22, 2, 'A Critical Study On Tiered Backlinks &v Their Effectiveness', 'Tiered backlink', 'Tiered backlink is a great way to increase the traffic of a website while it might sound complex, and in some cases, an effort less worthy of trying. Learn more about tiered backlink to benefit.', 1, 1, 1, '2018-03-20 04:15:45', '2018-10-31 08:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `careerapplies`
--

CREATE TABLE `careerapplies` (
  `id` int(10) UNSIGNED NOT NULL,
  `career_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careerapplies`
--

INSERT INTO `careerapplies` (`id`, `career_id`, `name`, `email`, `image`, `status`, `created_at`, `updated_at`) VALUES
(19, 2, 'Aurelia Roth', 'bewufi@mailinator.net', '1544528057.CEO approval for Page Boosting- 25sep18.pdf', 2, '2018-12-11 11:34:17', '2018-12-11 11:34:17'),
(20, 2, 'Carla Chan', 'nuqatopagu@mailinator.net', '1544528097.CEO approval for Page Boosting- 25sep18.pdf', 2, '2018-12-11 11:34:57', '2018-12-11 11:34:57'),
(21, 1, 'Eleanor Blackwell', 'pugegule@mailinator.net', '1544528277.CEO approval for Page Boosting- 25sep18.pdf', 2, '2018-12-11 11:37:57', '2018-12-11 11:37:57'),
(22, 1, 'Dolan Rose', 'suqicupecy@mailinator.com', '1544528314.CEO approval for Page Boosting- 25sep18.pdf', 2, '2018-12-11 11:38:33', '2018-12-11 11:38:34'),
(23, 2, 'Akeem Nichols', 'kyreh@mailinator.com', '1544528510.CEO approval for Page Boosting- 25sep18.pdf', 2, '2018-12-11 11:41:50', '2018-12-11 11:41:50'),
(24, 2, 'Xerxes Mathis', 'xazacuda@mailinator.net', '1544528586.CEO approval for Page Boosting- 25sep18.pdf', 2, '2018-12-11 11:43:06', '2018-12-11 11:43:06'),
(25, 1, 'Galena Burgess', 'pidugugotu@mailinator.com', '1544587740.Doc1.docx', 2, '2018-12-12 04:09:00', '2018-12-12 04:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `slug`, `start_date`, `end_date`, `image`, `content`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'There are many variations of passages 44', 'there-are-many-variations-of-passages', '2018-12-11', '2018-12-20', NULL, '<p>asdsadasd</p>', NULL, NULL, NULL, 1, 1, 1, '2018-12-11 08:32:55', '2018-12-11 08:46:51'),
(2, 'Full Stack Developer – PHP', 'full-stack-developer-php', '2018-12-11', '2018-12-22', NULL, '<div class=\"vac\" style=\"box-sizing: border-box; color: rgb(155, 171, 179); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 15px;\">\r\n<h5><span style=\"color:rgb(0, 0, 0)\">Vacancy</span></h5>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\">04</span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"job_des\" style=\"box-sizing: border-box; color: rgb(155, 171, 179); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 15px;\">\r\n<h5><span style=\"color:rgb(0, 0, 0)\">Job Context</span></h5>\r\n\r\n<ul>\r\n	<li>Experience in Laravel or Codeigniter framework is strongly preferred. This position requires a developer with the skills and experience in building modern web applications using the latest back-end and front-end technologies. You must write clean, reusable code with strong emphasis on stability and performance.</li>\r\n</ul>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"job_des\" style=\"box-sizing: border-box; color: rgb(155, 171, 179); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 15px;\">\r\n<h5>&nbsp;</h5>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<h5><span style=\"color:rgb(0, 0, 0)\">Job Responsibilities</span></h5>\r\n\r\n<ul>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Must have experience in web based application development using Laravel and Codeigniter</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Candidate with working (Software Development/Management) experience in ERP/CRM will be given preference</span><br />\r\n	<span style=\"color:rgb(0, 0, 0)\">Should be capable to complete a project in PHP by yourself as a core developer.</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Excellent knowledge in Object Oriented PHP. Version control experience required.</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Must have hands on experience in Object Oriented PHP, JavaScript, AJAX, JQuery client side script.</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Good understanding of front-end technologies, including HTML5, CSS3, Bootstrap</span><br />\r\n	<span style=\"color:rgb(0, 0, 0)\">Strong knowledge of relational databases, i.e. MySQL, PostgreSQL</span><br />\r\n	<span style=\"color:rgb(0, 0, 0)\">API integration such as Facebook, Google, Twitter, PayPal, Authorize, braintreepayments, etc.</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Participate in the development, maintenance and quality control of programming code.</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Knowledge on SDLC (Software Development Life Cycle) for custom and standard online software, strong understanding of PHP front &amp; back-end development with different standard frameworks, along with front end integration.</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Ability to test, debug and fix software bugs.</span></li>\r\n</ul>\r\n</div>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"job_nat\" style=\"box-sizing: border-box; color: rgb(155, 171, 179); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 15px;\">\r\n<h5><span style=\"color:rgb(0, 0, 0)\">Employment Status</span></h5>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\">Full-time</span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:rgb(0, 0, 0)\">Educational Requirements</span></strong></p>\r\n\r\n<div class=\"edu_req\" style=\"box-sizing: border-box; color: rgb(155, 171, 179); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 15px;\">\r\n<ul>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Bachelor of Science (BSc) in&nbsp;<strong>CSE</strong></span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">B.Sc in&nbsp;<strong>Computer Science/ Engineering</strong>&nbsp;from a reputed university</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Bachelor degree</span></li>\r\n</ul>\r\n</div>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"edu_req\" style=\"box-sizing: border-box; color: rgb(155, 171, 179); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 15px;\">\r\n<h5><span style=\"color:rgb(0, 0, 0)\">Experience Requirements</span></h5>\r\n\r\n<ul>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">2 to 3 year(s)</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">The applicants should have experience in the following area(s):&nbsp; Programmer/ Software Engineer (<strong>ERP, POS, Accounting</strong>) , Database Engineer/ Database Programmer, Software Implementation, MIS</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">The applicants should have experience in the following business area(s):</span><br />\r\n	<span style=\"color:rgb(0, 0, 0)\">Software Company</span></li>\r\n</ul>\r\n</div>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"job_req\" style=\"box-sizing: border-box; color: rgb(155, 171, 179); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 15px;\">\r\n<h5><span style=\"color:rgb(0, 0, 0)\">Additional Requirements</span></h5>\r\n\r\n<ul>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Age 26 to 32 years</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Only males are allowed to apply</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Ability to work individually or as part of a collaborative team</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Completing all tasks on time</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">If you don&rsquo;t have 2 years of experience with Laravel, Codeigniter, jQuery and Ajax, please do not apply.</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Candidate with working (Software Development/Management) experience in ERP/CRM will be given preference</span><br />\r\n	<span style=\"color:rgb(0, 0, 0)\">Must be very strong in business communication</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Must have 2+ year hands on experience in JavaScript, AJAX, jQuery client side script development as well as HTML5, CSS &amp; Bootstrap.</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0)\">Must have hands on experience in Object Oriented PHP, Laravel, Codeigniter, JavaScript, jQuery, AJAX, XML/JSON and Database Design.</span></li>\r\n</ul>\r\n</div>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"job_loc \" style=\"box-sizing: border-box; color: rgb(155, 171, 179); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 15px;\">\r\n<h5><span style=\"color:rgb(0, 0, 0)\">Job Location</span></h5>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\">House 34 (3B), Road 2, Nikunja 2, Dhaka 1229</span></p>\r\n</div>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"salary_range\" style=\"box-sizing: border-box; color: rgb(155, 171, 179); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 15px;\">\r\n<h5><span style=\"color:rgb(0, 0, 0)\">Salary</span></h5>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\">Negotiable</span></p>\r\n</div>\r\n\r\n<div style=\"box-sizing: border-box; color: rgb(155, 171, 179); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 15px;\">&nbsp;</div>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\">Send your CV at&nbsp;<strong>career@nextpagetl.com</strong>&nbsp;by 30th September, 2018.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4><strong><span style=\"color:rgb(0, 0, 0)\">Next Page Technology Ltd.</span></strong></h4>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\">Contect: +8801711084621</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">Address: House 34 (3B), Road 2, Nikunja 2, Dhaka 1229</span></p>', NULL, NULL, NULL, 1, NULL, 1, '2018-12-11 09:06:40', '2018-12-11 09:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `objective` text COLLATE utf8mb4_unicode_ci,
  `requirements` text COLLATE utf8mb4_unicode_ci,
  `is_enable_site_link` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  `site_link_title` text COLLATE utf8mb4_unicode_ci,
  `site_link` text COLLATE utf8mb4_unicode_ci,
  `case_style` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=Normal, 1=Affiliate',
  `extra` longtext COLLATE utf8mb4_unicode_ci,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `title`, `slug`, `image`, `description`, `objective`, `requirements`, `is_enable_site_link`, `site_link_title`, `site_link`, `case_style`, `extra`, `views`, `likes`, `comments`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Case Study : Kayakfisherly.com', 'case-study-kayakfisherlycom', 'kayak-case.png', '<p>Kayakfisherly is an affiliate site associated with Amazon Services LLC Associates Program. Behind the site is a small number of contributors sharing their experiences with different fishing kayaks.</p>\r\n\r\n<p>Depending on our communication with those people while working on the project, we were convinced that these people were real fanatics about kayak fishing that has an exquisite inspiration running through their veins.</p>\r\n\r\n<p>So, they wanted us to build a website that can offer users the look and feel of a modern knowledge base. The ultimate goal, besides becoming a successful Amazon affiliate, is to provide great value to readers by presenting them the reviews of the top fishing kayaks in a comprehensive yet engaging manner, so they feel interested in learning about the kayaks and getting them for their real-life benefits.</p>', '<p>The first thing that we got about kayakfisherly&#39;s aim is to gather quality traffic through valuable content based on practical user experiences and arduous research.</p>\r\n\r\n<p>Conversion of the traffic into real buyers was perhaps the biggest challenge we were requested to undertake.</p>\r\n\r\n<p>Furthermore, the timeframe was, indeed, very stringent, but we were never pessimistic about our capability and formidability.</p>', '<ul>\r\n	<li>Creating a logical hierarchy</li>\r\n	<li>Visually Appealing UX Design &amp; Prototyping</li>\r\n	<li>Custom WordPress Theme Development</li>\r\n	<li>100% Responsiveness &amp; Cross-Browser Compatibility</li>\r\n	<li>Mobile Readiness</li>\r\n	<li>Full SEO Services Audit</li>\r\n	<li>Google Analytics</li>\r\n	<li>Site Speed Optimization</li>\r\n	<li>Development of a credible brand development strategy</li>\r\n	<li>MONETIZING the site (The Toughest Yet Sweetest Part)</li>\r\n</ul>', 0, NULL, NULL, 2, 'a:17:{s:11:\"about_title\";s:27:\"About Kayakfisherly Website\";s:17:\"key_element_title\";s:12:\"Key Elements\";s:20:\"key_element_subtitle\";s:53:\"Things That Lead Us To The Way To Client Satisfaction\";s:5:\"extra\";N;s:15:\"affiliate_title\";s:29:\"A Walk-Through To Our Actions\";s:18:\"affiliate_subtitle\";s:53:\"Things That Lead Us To The Way To Client Satisfaction\";s:29:\"affiliate_initial_description\";s:961:\"<p style=\"text-align:justify\">To be honest, we weren&rsquo;t the first to work on the site. We didn&rsquo;t have any role in niche selection and keyword research, and even the initial development stage. However, we had to make a tough but essential decision when we were first contacted.As per the client&rsquo;s requirements and agreement with us, we had to revamp the site including all its nook and corner, from website development to taking the site on Google&rsquo;s first page. We do not like to tell that we can do all these with just a snap. Why?</p>\r\n\r\n<p style=\"text-align:justify\">Because, it takes you time, efforts, and knowledge to get your site ranked on the first page. Being the desired spot for countless competitors, that spot is never an easy thing to come by.As soon as we were tasked with the target, we did a very critical but quick competitor analysis. It took us a full working day to find out what our client&rsquo;s site lacks in.</p>\";s:23:\"affiliate_initial_image\";s:23:\"through-our-action1.png\";s:32:\"affiliate_page_speed_description\";s:456:\"<h3>Here are the key issues we identified.</h3>\r\n\r\n<ul>\r\n	<li>The design wasn&rsquo;t user-friendly at all, and the visuals weren&rsquo;t appealing enough.</li>\r\n	<li>The site didn&rsquo;t load fast.</li>\r\n	<li>It did not have the required quantity of content.</li>\r\n	<li>The site didn&rsquo;t have any social proof.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">How can that be a good or reliable website in Google&rsquo;s eyes? Should we blame Google?</p>\";s:26:\"affiliate_page_speed_image\";s:23:\"through-our-action2.png\";s:28:\"affiliate_rating_description\";s:784:\"<p>After a group discussion, we created a highly adaptive web design layout that can accommodate the required sections and visuals while supporting the development ends. Our designers created eye-catching banners and sourced great images of the different products.Our developers spent a few days to develop a custom theme to ensure that the site turns out to be clean, functional, fast-loading, and secured. While developing the site, they kept the planned architecture in mind. They tested each section, page, icon, image sizes, plug-ins, and other CMS elements. Oh, by the way, our chosen CMS was WordPress. Our content team was busy creating engaging pieces for the products and the website too. Having adequate experience, they didn&rsquo;t take much time to finish their job.</p>\";s:22:\"affiliate_rating_image\";s:23:\"through-our-action3.png\";s:31:\"affiliate_seo_check_description\";s:586:\"<p>The task that our digital marketing team handled was doing the essentials to improve the site&rsquo;s social metrics. They created a page on Facebook with compelling content in the description, rich visualization, and great videos. Some other professionals spent their time in doing the off-page optimization.After finishing the site up to our desired level, we completed the guideline to request for a recrawl of the site.The first month didn&rsquo;t go very well, and it was understandable. Our client started admiring us from the second month as the site started making money.</p>\";s:25:\"affiliate_seo_check_image\";s:23:\"through-our-action4.png\";s:27:\"affiliate_extra_description\";s:282:\"<p>For confidentiality clauses, we cannot reveal how much, but it was inspiring for both the client and us that the site got its life.As we continued our duties, the site continued to perform great on Google&rsquo;s changing scenario. This is how the success story was composed.</p>\";s:6:\"banner\";s:22:\"case-detals-banner.jpg\";s:15:\"key_element_img\";s:19:\"key-element-img.png\";}', 74, 1, 0, NULL, NULL, NULL, 1, 5, 1, '2018-03-14 22:42:15', '2018-04-06 15:34:42'),
(8, 'Case Study : Faucets REVIEWED', 'case-study-faucets-reviewed', 'case1.png', '<p>Faucets REVIEWED is one of our prime examples to show you how we have come this far from a startup digital marketing agency with a little knowledge of everything on the Internet. It is a multi-niche affiliate site just like many other sites we have built, promoted, got ranked, and monetized.</p>\r\n\r\n<p>The way homeowners once used to think about and feel the necessity of kitchen and bathroom faucets has changed remarkably. People are now more conscious about the delivery of water. This concern provided the brains behind Faucets REVIEWED the motivation to build something like this.</p>', '<ul>\r\n	<li>To provide practical insights and suggestions about the different kitchen faucets, accessories, fixtures, and parts.</li>\r\n	<li>To help people buy what suits their demands within the budget.</li>\r\n	<li>To build trust and credibility providing practical reviews of the products.</li>\r\n	<li>To attract the target audience to visit the site, explore its content, and get what they need.</li>\r\n	<li>To attract people who share the common goals of our client.</li>\r\n	<li>AND the only distinct yet vital objective that the client wanted to achieve in a combination of the above.</li>\r\n	<li>To enable the site to become a MONEYMAKER for our client.</li>\r\n</ul>', '<ul>\r\n	<li>Preparing and arranging everything required to build a custom WordPress website that loads fast and feels easy to navigate.</li>\r\n	<li>Assurance of cross-browser and device compatibility with responsiveness.</li>\r\n	<li>Complete SEO Service package that leaves nothing behind or beyond its range.</li>\r\n	<li>A holistic branding strategy</li>\r\n	<li>Failproof Monetization procedures</li>\r\n</ul>', 0, NULL, NULL, 2, 'a:17:{s:11:\"about_title\";s:30:\"About Faucets REVIEWED Website\";s:17:\"key_element_title\";s:12:\"Key Elements\";s:20:\"key_element_subtitle\";s:41:\"The Principal Components of Our Workforce\";s:5:\"extra\";N;s:15:\"affiliate_title\";s:25:\"Our Actions In A Nutshell\";s:18:\"affiliate_subtitle\";s:77:\"A Cursory Glance At The Tasks We Performed With Care And Attention To Details\";s:29:\"affiliate_initial_description\";s:769:\"<p>For your information, it was just a demand from the client who just expressed the intention that the multi-niche would be about kitchen faucets, fixtures, accessories, and different parts. From setting requirements to the monetization, we were solely responsible, positively of course.</p>\r\n\r\n<p>From day one, we worked according to the plan we created before finally starting the project.</p>\r\n\r\n<p>The UX designers started creating the layouts while the digital marketing team started their &lsquo;keyword research&rsquo; journey. These people took a few days to get things on the go. In the meantime, the writers did the research quite extensively. A few of our writers are among the researchers who do things on the basis of practical data and findings only.</p>\";s:23:\"affiliate_initial_image\";s:27:\"faucets_through_action1.png\";s:32:\"affiliate_page_speed_description\";s:303:\"<p>Here are the key issues we identified:</p>\r\n\r\n<p>The site wasn&rsquo;t user friendly at all. It looked like a webpage full of visual puzzles and riddles.</p>\r\n\r\n<p>It didn&rsquo;t perform well on mobile devices and other smaller devices.</p>\r\n\r\n<p>The monetization process wasn&rsquo;t efficient.</p>\";s:26:\"affiliate_page_speed_image\";s:27:\"faucets_through_action2.png\";s:28:\"affiliate_rating_description\";s:602:\"<p>So, we took a few more days, of course as per the client&rsquo;s agreement. After the finalization process, our writers started their jobs while the developers had their materials in hand.</p>\r\n\r\n<p>We worked for days and nights for a while and managed to build something that impressed our client at the first demonstration. But, the hardest part was yet to be handled.</p>\r\n\r\n<p>Here come the teams at our digital marketing agency consisting of a mix of some aspiring and talented marketers who are capable of building and implementing a resilient strategy that stands even during a major hit.</p>\";s:22:\"affiliate_rating_image\";s:27:\"faucets_through_action3.png\";s:31:\"affiliate_seo_check_description\";s:660:\"<p>These professionals took less than two months to bring us a picture of a solid social media standing for the site. They took this brief period for everything, from setting up an account to increase the reach, awareness, and grow the follower and subscriber bases. Most importantly, they showed us an example of their mastery to cope with Google&rsquo;s unforeseeable changes. How they started and took the site on Google&rsquo;s hotspot seems much like a mystery. We cannot help talking about our writers who did a great job by providing high-quality content that not only educates and informs the audiences but also persuades them to the desired place.</p>\";s:25:\"affiliate_seo_check_image\";s:27:\"faucets_through_action4.png\";s:27:\"affiliate_extra_description\";s:183:\"<p>The client expressed his gratification and gratitude to us as Faucets REVIEWED was getting what was expected. We felt relieved to receive authentic evaluations from the client.</p>\";s:6:\"banner\";s:22:\"case-detals-banner.jpg\";s:15:\"key_element_img\";s:33:\"faucets_case_stady_responsive.png\";}', 39, 0, 0, 'Story Of A Multi Niche Site | Success Of A Digital Marketing Agency', 'Digital marketing agency', 'Doodle Digital as a professional digital marketing agency has been in the development and promotion of Amazon affiliate websites, and Faucets REVIEWED is one of its great achievements.', 1, 5, 1, '2018-03-14 23:43:20', '2018-04-06 15:15:35'),
(9, 'Case Study : Spottingpro', 'case-study-spottingpro', 'sppotting-case.png', '<p>Spottingpro is one of our pet projects which we have taken not long ago. As a common fact in any digital marketing agency, most of our expandable resources are engaged in various projects. So, we have utilized the rest of our talents to build, develop, and monetize this site.</p>\r\n\r\n<p>With an indomitable passion for wildlife, hunting, and birdwatching, we found a few things that could be more crucial to our purposes than a spotting scope. Realizing the importance was the initial motivation behind these efforts.</p>', '<p>With our time, passion, and real user experience, we have built this site, so we can draw the attention of keen hunters or birdwatchers who would benefit from our honest reviews and critical analysis of spotting scopes of different makes and models. We have brought to our intended audiences some insights on buying a scope, its uses, and utilities which are worth more than just thousands of dollars.</p>\r\n\r\n<p>We have even bigger motives behind attempting to draw traffic. Besides making some fortune, we can create a great community that has expertise and enthusiasm in wildlife.</p>', '<ul>\r\n	<li>Keyword Research &amp; Product Selection</li>\r\n	<li>Content Plan before &amp; After the Site Launch</li>\r\n	<li>Multiple Web Layouts</li>\r\n	<li>HTML &amp; jQuery</li>\r\n	<li>Custom Theme &amp; Plug-In Development</li>\r\n	<li>Blog Integration</li>\r\n	<li>Creative Banners with Product Image</li>\r\n	<li>Animated Videos</li>\r\n	<li>Social Media Setup &amp; Integration</li>\r\n	<li>A to Z On-Page &amp; Off-Page Optimization</li>\r\n	<li>Amazon Affiliation Signup</li>\r\n</ul>', 0, NULL, NULL, 1, 'a:17:{s:11:\"about_title\";s:25:\"About Spottingpro Website\";s:17:\"key_element_title\";s:12:\"Key Elements\";s:20:\"key_element_subtitle\";s:47:\"Things That Brings Us Close To What Is Required\";s:5:\"extra\";s:2086:\"<p>At the initial stage, we had some difficulties finding appropriate keywords with low keyword competition as we recognized that the niche was already saturated. However, that was not a new experience. Thanks to our SEO guys who are wealthy in terms of experience and insights about the affiliate landscape! They unleashed a way out of this, and we started working with adequate enthusiasm.</p>\r\n\r\n<p>At the design phase, we became too choosy to select a design from the bunch of great layouts. After all, the selection was done, and the developers did their job in a very brief period, shorter than expected. They did such a fine job that the site is full of user-friendly functions and features.</p>\r\n\r\n<p>Despite the arduous efforts of our apt web programmers, we thought of bringing some changes in the user experience using the site. For example, the Editor Choice section underwent some critical changes, so users can easily find information about their desired spotting scopes within particular budgets.</p>\r\n\r\n<p>Some of us who have experiences using spotting scopes worked side by side with the writers who appreciated the support as their ideas were like some dots that required to be connected. Those creative people did a satisfactory job, and the site became live.</p>\r\n\r\n<p>There, the SEO guys, who are an important driver of our digital marketing agency, initiated their operations which were good enough, if not magical. For the first two months after the site&rsquo;s getting indexed, all our SEO people and writers worked hard to make their journey to the first page of Google and Bing.</p>\r\n\r\n<p>We were happy to see our site on Bing&rsquo;s first page within two weeks after the indexing of the site. In a few more days, the site reached within the first two search results. What&rsquo;s surprising then? More to come from this digital marketing agency!</p>\r\n\r\n<p>Our site has already started making money! Do you want to be part of such a success story? You&rsquo;re just one step away from <a href=\"https://doodledigital.net/packages/\">Our Great Packages</a>!</p>\";s:15:\"affiliate_title\";s:30:\"An Overview of Actions We Took\";s:18:\"affiliate_subtitle\";s:52:\"Things That Brought Us What We Dreamt and Worked For\";s:29:\"affiliate_initial_description\";s:1015:\"<p>At the initial stage, we had some difficulties finding appropriate keywords with low keyword competition as we recognized that the niche was already saturated. However, that was not a new experience. Thanks to our SEO guys who are wealthy in terms of experience and insights about the affiliate landscape! They unleashed a way out of this, and we started working with adequate enthusiasm.</p>\r\n\r\n<p>At the design phase, we became too choosy to select a design from the bunch of great layouts. After all, the selection was done, and the developers did their job in a very brief period, shorter than expected. They did such a fine job that the site is full of user-friendly functions and features.</p>\r\n\r\n<p>Despite the arduous efforts of our apt web programmers, we thought of bringing some changes in the user experience using the site. For example, the Editor Choice section underwent some critical changes, so users can easily find information about their desired spotting scopes within particular budgets.</p>\";s:23:\"affiliate_initial_image\";s:27:\"faucets_through_action1.png\";s:32:\"affiliate_page_speed_description\";s:590:\"<p>Some of us who have experiences using spotting scopes worked side by side with the writers who appreciated the support as their ideas were like some dots that required to be connected. Those creative people did a satisfactory job, and the site became live.</p>\r\n\r\n<p>There, the SEO guys, who are an important driver of our digital marketing agency, initiated their operations which were good enough, if not magical. For the first two months after the site&rsquo;s getting indexed, all our SEO people and writers worked hard to make their journey to the first page of Google and Bing.</p>\";s:26:\"affiliate_page_speed_image\";s:31:\"soppotingpro_throgu_action1.png\";s:28:\"affiliate_rating_description\";N;s:22:\"affiliate_rating_image\";N;s:31:\"affiliate_seo_check_description\";N;s:25:\"affiliate_seo_check_image\";N;s:27:\"affiliate_extra_description\";N;s:6:\"banner\";s:22:\"case-detals-banner.jpg\";s:15:\"key_element_img\";s:38:\"soppotingpro_case_stady_responsive.png\";}', 13, 0, 0, 'Story Of A Digital Marketing Agency’s Own Affiliate Project', 'Digital marketing agency', 'Doodle Digital being a full service, professional digital marketing agency has successfully managed to launch Spottingpro that is growing and ranking higher each day. Lear more about our success!', 1, 5, 1, '2018-03-14 23:47:11', '2018-04-06 12:50:05'),
(10, 'Case Study : Suggs Law', 'case-study-suggs-law', 'suges-low.png', '<p>Suggs Law, an injury attorney firm focusing on helping the community, contacted us one afternoon last year during the first month of the last quarter. Suggs Law<strong> </strong>had a website containing several pages of content. The website demonstrates the firm&rsquo;s motivation and success for the past years. The firm wanted to have an efficient digital marketing agency that can tackle the situation.</p>', '<p>Suggs Law, an injury attorney firm focusing on helping the community, contacted us one afternoon last year during the first month of the last quarter. Suggs Law<strong> </strong>had a website containing several pages of content. The website demonstrates the firm&rsquo;s motivation and success for the past years. The firm wanted to have an efficient digital marketing agency that can tackle the situation.</p>', '<p>Suggs Law, an injury attorney firm focusing on helping the community, contacted us one afternoon last year during the first month of the last quarter. Suggs Law<strong> </strong>had a website containing several pages of content. The website demonstrates the firm&rsquo;s motivation and success for the past years. The firm wanted to have an efficient digital marketing agency that can tackle the situation.</p>', 0, NULL, NULL, 1, 'a:17:{s:11:\"about_title\";s:23:\"About Suggs Law Website\";s:17:\"key_element_title\";s:12:\"Key Elements\";s:20:\"key_element_subtitle\";s:40:\"Things That Drive Us To A Solid Strategy\";s:5:\"extra\";s:3446:\"<h3>Background:</h3>\r\n\r\n<p>What we found out about their SEO was that they had been using the so-called attractive services of a moderately popular SEO company until they came to us.</p>\r\n\r\n<p>The service provider used a very special technique; we would call a fair practice in a time other than the one when numerous websites got hit with a penalty just because of one reason, the technique. Theirs was one of the techniques you won&rsquo;t find among Google&rsquo;s preferences. More specifically, those techniques could not be capable of tackling Google&rsquo;s new algorithm changes.</p>\r\n\r\n<p>Before the penalty, the site used to receive thousands of visitors and hundreds of customers&rsquo; queries, e-mails each week. When the number of queries or visitors dropped quite shockingly in the first quarter of 2017, suspicions arose. It became almost impossible for Suggs Law<strong> </strong>to expect anything from Google because the giant pushed the site to as far as 9<sup>th</sup> page of the search results even though it was searched by its name only.</p>\r\n\r\n<h3>Problems:</h3>\r\n\r\n<p>The first big problem was about the links the site had. After thoroughly investing the site&rsquo;s link table, we found that there were links from low-quality, suspicious sources. Another issue we noticed that there was an unreasonable number of links coming from a single website. Also, there were several links using the same phrase.</p>\r\n\r\n<p>We don&rsquo;t mean to be rude, but the service provider did one thing going beyond the conventional expectation from an SEO service. &ldquo;They deserted the &lsquo;White Hat&rsquo; optimization technique.&rdquo; Can we really appreciate that? Such an action resulted in the discounts of inbound links and ultimate penalization. Consequently, the number of visitors plummeted, and so did the rankings.</p>\r\n\r\n<h3>Challenges:</h3>\r\n\r\n<p>What do you expect from your digital marketing agency? You know. Suggs Law did the same. As we stated the problem, we believe you already have realized the challenges we had to overcome to put this story on this page. We were requested to get the site out of this trap.</p>\r\n\r\n<h3>How We Worked:</h3>\r\n\r\n<p>What we did first, as per our knowledge, was remove bad links through proper technical methods although we found in some of our previous projects that bad links are not always removable. We got rd of the remaining links, disavowed actually through Google&rsquo;s Webmaster Tools.</p>\r\n\r\n<p>To be honest, we had to perform some SEO techniques, not a big deal really. We appreciated the content of the site because this part played its role nicely. In order to reduce bounce rates, we had to address several other issues, technical/development related indeed. Improving the usability, we made the site&rsquo;s navigation easy and increased the load speed.</p>\r\n\r\n<h3>The result, the testimony of our success:</h3>\r\n\r\n<p>The site again appeared on Google&rsquo;s first page two months after our optimizations. While the site might appear at the top or second top position on Google&rsquo;s first phrase for certain words/phrases, Suggs Law<strong> </strong>became quite happy to see that they started receiving high-quality leads just like before.</p>\r\n\r\n<p>Maybe, you are thinking of hiring a digital marketing agency to achieve such an amazing result in a month, right? Well, pick one of our <a href=\"https://doodledigital.net/services/\">Great Packages</a>.</p>\";s:15:\"affiliate_title\";N;s:18:\"affiliate_subtitle\";N;s:29:\"affiliate_initial_description\";N;s:23:\"affiliate_initial_image\";N;s:32:\"affiliate_page_speed_description\";N;s:26:\"affiliate_page_speed_image\";N;s:28:\"affiliate_rating_description\";N;s:22:\"affiliate_rating_image\";N;s:31:\"affiliate_seo_check_description\";N;s:25:\"affiliate_seo_check_image\";N;s:27:\"affiliate_extra_description\";N;s:6:\"banner\";s:22:\"case-detals-banner.jpg\";s:15:\"key_element_img\";s:24:\"sugges-lawresponsive.png\";}', 14, 0, 0, 'Story Of An Injury Law Firm’s Website’s Rankings On Search Engines', 'Digital marketing agency', 'Doodle Digital has helped Suggs Law to reclaim their position on Google’s Search engine result pages, and the project was a huge success that we, being a growing digital marketing agency takes pride in.', 1, 5, 1, '2018-03-14 23:52:50', '2018-04-05 11:03:50'),
(11, 'Case Study : Kjs-Law.Com', 'case-study-kjs-lawcom', 'kjs-law.png', '<p>This story is all about Kralovec, Jambois &amp; Schwartz, one of our happiest and best clients. The firm has been providing its clients all types of legal support, counseling, and services related to Media Malpractice and personal injury trial.</p>\r\n\r\n<p>They approached us during the second quarter of 2017 with a comprehensive list of requirements, all pointing towards a common aspect, the need for efficient search engine marketing strategies.</p>', '<p>Well, we cannot help calling them our CHALLENGES to overcome and satisfy the client.</p>\r\n\r\n<p>Kralovec, Jambois &amp; Schwartz set ambitious goals for growth and revenues, which are why they were seeking a digital marketing agency that they could hold accountable for different key performance indicators (KPIs) along with some online marketing goals like the following:</p>\r\n\r\n<ul>\r\n	<li>Increase in organic traffic by 200% each year.</li>\r\n	<li>Provide first-page search engine results positioning for a core set of competitive keyword targets</li>\r\n	<li>Continual conversion rate optimization (CRO) for organic traffic</li>\r\n</ul>\r\n\r\n<p>So, it is understandable why top-notch search engine marketing strategies are crucial.</p>', '<p>We had to use particular components to implement our search engine marketing strategies for the program. They include:</p>\r\n\r\n<ul>\r\n	<li>SEO (Organic)</li>\r\n	<li>Content marketing</li>\r\n	<li>Social media marketing</li>\r\n	<li>Demand generation measurement</li>\r\n	<li>Online PR</li>\r\n</ul>', 0, NULL, NULL, 1, 'a:17:{s:11:\"about_title\";s:34:\"About Kralovec, Jambois & Schwartz\";s:17:\"key_element_title\";s:12:\"Key Elements\";s:20:\"key_element_subtitle\";s:53:\"Things That Lead Us To The Way To Client Satisfaction\";s:5:\"extra\";s:2310:\"<p><strong>How we worked?</strong></p>\r\n\r\n<p>We implemented a coordinated content marketing and SEO plan to help the law firm to reach its goals. While we kept monitoring the KPIs and achieving the established goals, we worked side by side the firm&rsquo;s marketing team and other relevant parties.</p>\r\n\r\n<p><strong>Our Search Engine Marketing Strategies:</strong></p>\r\n\r\n<p>We identified a set of core keyword targets and a detailed list of other related keywords/phrases. As we had our writers creating new content for the website and the blog, we prepared strategic guidelines and other on-page optimizations.</p>\r\n\r\n<p>We planned for and initiated a thorough link building campaign to leverage the key components of the firm&rsquo;s existing marketing campaigns and drive quality links to the blog using social media and outreach techniques.</p>\r\n\r\n<p>For examples, we offered comprehensive recommendations for the collection and analysis of bylines, and links related to different events, programs and outreach relevant to the content marketing assets we had developed.</p>\r\n\r\n<p>Our SEO team worked regularly and consistently to conduct keyword research and competitor analysis while offering attractive and new content ideas.</p>\r\n\r\n<p>This list kept going on for as many as four months, and the outcomes were like the following.</p>\r\n\r\n<h3>Results:</h3>\r\n\r\n<ul>\r\n	<li>96% growth in organic search traffic (The rate exceeded the client&rsquo;s expectations.)</li>\r\n	<li>1.5x increase in the number of unique visitors for over a six-month period</li>\r\n	<li>10% increase in the firm&rsquo;s overall lead generation using organic search</li>\r\n	<li>First-page positioning on Google for 60% of the strategic keyword targets</li>\r\n</ul>\r\n\r\n<p>We invested tremendous efforts to create high-quality content assets which included infographics, blog posts, whitepapers, landing pages, video contents, and other social media visuals, all of which work in an integrated manner to create a serious impact on our traffic generation and gathering processes.</p>\r\n\r\n<p>We believe and hope this list would go on in the coming days, and we are working toward creating more case studies. Maybe, by now, you have made up your mind to be one of our success stories.</p>\r\n\r\n<p>Then, pick one of our affordable packages.</p>\";s:15:\"affiliate_title\";N;s:18:\"affiliate_subtitle\";N;s:29:\"affiliate_initial_description\";N;s:23:\"affiliate_initial_image\";N;s:32:\"affiliate_page_speed_description\";N;s:26:\"affiliate_page_speed_image\";N;s:28:\"affiliate_rating_description\";N;s:22:\"affiliate_rating_image\";N;s:31:\"affiliate_seo_check_description\";N;s:25:\"affiliate_seo_check_image\";N;s:27:\"affiliate_extra_description\";N;s:6:\"banner\";s:22:\"case-detals-banner.jpg\";s:15:\"key_element_img\";s:23:\"case-details-image2.png\";}', 17, 0, 0, 'A Law Firm’s Success Through Search Engine Marketing Strategies', 'search engine marketing strategies', 'Doodle Digital implemented a long list of search engine marketing strategies to bring Kralovec, Jambois & Schwartz the essentials to achieve the firm’s aggressive goals. Read the success story and learn more.', 1, 1, 1, '2018-03-15 00:01:19', '2018-04-05 11:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `description`, `image`, `slug`, `views`, `total_posts`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(19, 0, 'Software', NULL, NULL, 'software', 0, 6, NULL, NULL, NULL, 1, NULL, 1, '2018-12-10 22:13:44', '2018-12-13 07:59:43'),
(20, 0, 'Website', NULL, NULL, 'website', 0, 7, NULL, NULL, NULL, 1, NULL, 1, '2018-12-11 03:39:30', '2018-12-13 07:06:21'),
(21, 0, 'Digital Marketing', NULL, NULL, 'digital-marketing', 0, 5, NULL, NULL, NULL, 1, NULL, 1, '2018-12-11 03:41:26', '2018-12-11 03:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `categoryables`
--

CREATE TABLE `categoryables` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `categoryable_id` int(10) UNSIGNED NOT NULL,
  `categoryable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoryables`
--

INSERT INTO `categoryables` (`id`, `category_id`, `categoryable_id`, `categoryable_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'App\\Model\\Common\\Blog', '2017-10-05 05:10:27', '2017-10-05 05:10:27'),
(2, 2, 1, 'App\\Model\\Common\\Blog', '2017-10-05 05:10:27', '2017-10-05 05:10:27'),
(3, 1, 2, 'App\\Model\\Common\\Blog', '2017-10-05 05:11:48', '2017-10-05 05:11:48'),
(8, 1, 3, 'App\\Model\\Common\\Blog', '2018-01-05 21:27:44', '2018-01-05 21:27:44'),
(9, 1, 4, 'App\\Model\\Common\\Blog', '2018-01-05 21:27:35', '2018-01-05 21:27:35'),
(10, 3, 3, 'App\\Model\\Common\\Cases', '2017-10-14 21:46:13', '2017-10-14 21:46:13'),
(11, 5, 3, 'App\\Model\\Common\\Cases', '2017-10-14 21:46:13', '2017-10-14 21:46:13'),
(15, 5, 4, 'App\\Model\\Common\\Cases', '2018-02-05 01:59:40', '2018-02-05 01:59:40'),
(18, 1, 5, 'App\\Model\\Common\\Blog', '2018-01-09 01:53:10', '2018-01-09 01:53:10'),
(19, 1, 6, 'App\\Model\\Common\\Blog', '2018-01-09 01:53:05', '2018-01-09 01:53:05'),
(20, 1, 7, 'App\\Model\\Common\\Blog', '2018-01-09 01:53:02', '2018-01-09 01:53:02'),
(21, 1, 8, 'App\\Model\\Common\\Blog', '2018-03-03 02:04:58', '2018-03-03 02:04:58'),
(29, 1, 5, 'App\\Model\\Common\\Cases', '2018-02-28 03:03:12', '2018-02-28 03:03:12'),
(31, 1, 6, 'App\\Model\\Common\\Cases', '2018-03-14 22:28:17', '2018-03-14 22:28:17'),
(52, 19, 12, 'App\\Model\\Common\\Portfolio', '2018-12-13 06:26:34', '2018-12-13 06:26:34'),
(53, 19, 10, 'App\\Model\\Common\\Portfolio', '2018-12-11 03:40:38', '2018-12-11 03:40:38'),
(54, 20, 10, 'App\\Model\\Common\\Portfolio', '2018-12-11 03:40:38', '2018-12-11 03:40:38'),
(55, 21, 9, 'App\\Model\\Common\\Portfolio', '2018-12-11 03:41:47', '2018-12-11 03:41:47'),
(56, 19, 7, 'App\\Model\\Common\\Portfolio', '2018-12-11 03:42:02', '2018-12-11 03:42:02'),
(57, 21, 7, 'App\\Model\\Common\\Portfolio', '2018-12-11 03:42:02', '2018-12-11 03:42:02'),
(58, 20, 8, 'App\\Model\\Common\\Portfolio', '2018-12-11 03:42:12', '2018-12-11 03:42:12'),
(59, 19, 14, 'App\\Model\\Common\\Blog', '2018-12-11 03:43:03', '2018-12-11 03:43:03'),
(60, 19, 13, 'App\\Model\\Common\\Blog', '2018-12-11 04:01:06', '2018-12-11 04:01:06'),
(62, 20, 9, 'App\\Model\\Common\\Blog', '2018-12-11 03:43:54', '2018-12-11 03:43:54'),
(63, 21, 12, 'App\\Model\\Common\\Blog', '2018-12-11 03:44:17', '2018-12-11 03:44:17'),
(64, 20, 11, 'App\\Model\\Common\\Blog', '2018-12-11 03:44:45', '2018-12-11 03:44:45'),
(65, 21, 11, 'App\\Model\\Common\\Blog', '2018-12-11 03:44:45', '2018-12-11 03:44:45'),
(66, 20, 10, 'App\\Model\\Common\\Blog', '2018-12-11 03:45:08', '2018-12-11 03:45:08'),
(67, 20, 13, 'App\\Model\\Common\\Portfolio', '2018-12-13 07:07:14', '2018-12-13 07:07:14'),
(69, 19, 15, 'App\\Model\\Common\\Portfolio', '2018-12-13 07:59:43', '2018-12-13 07:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_c_id` int(10) UNSIGNED NOT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity` date NOT NULL,
  `discount` double(5,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 = Fixed and 2 = Percentage',
  `created_by` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1=Completed, 2=Processing, 3=Pending, 4=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `coupon_code`, `validity`, `discount`, `type`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Coupon code 1', 'mizan', '2018-12-01', 10.00, 2, 1, 1, 1, '2017-11-17 23:19:48', '2018-02-05 02:22:18'),
(2, 'Coupon code 1', 'getweb', '2018-12-31', 100.00, 1, 1, 1, 1, '2017-11-18 00:51:47', '2018-02-05 02:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `liker_id` int(10) UNSIGNED DEFAULT NULL,
  `liker_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likeable_id` int(10) UNSIGNED NOT NULL,
  `likeable_type` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=Not Liked yet, 1=Liked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=Yes, 0=No',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `alt` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `is_private`, `title`, `caption`, `alt`, `description`, `slug`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 0, 'logo', NULL, NULL, NULL, 'logo_1.png', 1, NULL, '2017-10-02 23:20:09', '2017-10-02 23:20:09'),
(2, 0, 'logo', NULL, NULL, NULL, 'logo_2.png', 1, NULL, '2017-10-02 23:20:46', '2017-10-02 23:20:46'),
(3, 0, 'User', NULL, NULL, NULL, '526bd35944a672f75b2de21a78e909c6-59b9f12d1065e.jpg', 1, 1, '2017-10-02 23:24:53', '2017-10-02 23:34:55'),
(4, 0, 'nature', 'test', 'test', 'stewa', '6bdc750674e95c8b8e0d07ad4204e73b-59b9e7ae36b0d.jpg', 1, 1, '2017-10-02 23:49:22', '2017-10-04 00:50:24'),
(8, 0, 'breadcumb2', NULL, NULL, NULL, 'breadcumb2.png', 1, NULL, '2017-10-05 00:45:07', '2017-10-05 00:45:07'),
(9, 0, 'breadcumb', NULL, NULL, NULL, 'breadcumb.png', 1, NULL, '2017-10-05 00:45:07', '2017-10-05 00:45:07'),
(10, 0, 'badd', NULL, NULL, NULL, 'badd.jpg', 1, NULL, '2017-10-05 00:58:28', '2017-10-05 00:58:28'),
(11, 0, 'lead-post', NULL, NULL, NULL, 'lead-post.jpg', 1, NULL, '2017-10-05 01:53:44', '2017-10-05 01:53:44'),
(12, 0, 'bauthor', NULL, NULL, NULL, 'bauthor.png', 1, NULL, '2017-10-05 04:16:26', '2017-10-05 04:16:26'),
(13, 0, 'adspace', NULL, NULL, NULL, 'adspace.jpg', 1, NULL, '2017-10-07 05:05:45', '2017-10-07 05:05:45'),
(14, 0, '1', NULL, NULL, NULL, '1_1.png', 1, NULL, '2017-10-08 04:30:45', '2017-10-08 04:30:45'),
(15, 0, 'icon_01', NULL, NULL, NULL, 'icon_01.png', 1, NULL, '2017-10-10 00:47:35', '2017-10-10 00:47:35'),
(16, 0, 'icon_02', NULL, NULL, NULL, 'icon_02.png', 1, NULL, '2017-10-10 00:47:35', '2017-10-10 00:47:35'),
(17, 0, 'icon_03', NULL, NULL, NULL, 'icon_03.png', 1, NULL, '2017-10-10 00:47:36', '2017-10-10 00:47:36'),
(18, 0, 'icon_04', NULL, NULL, NULL, 'icon_04.png', 1, NULL, '2017-10-10 00:47:36', '2017-10-10 00:47:36'),
(19, 0, 'icon-03-01', NULL, NULL, NULL, 'icon-03-01.png', 1, NULL, '2017-10-10 00:47:37', '2017-10-10 00:47:37'),
(20, 0, 'icon-03-02', NULL, NULL, NULL, 'icon-03-02.png', 1, NULL, '2017-10-10 00:47:37', '2017-10-10 00:47:37'),
(21, 0, 'icon-03-03', NULL, NULL, NULL, 'icon-03-03.png', 1, NULL, '2017-10-10 00:47:38', '2017-10-10 00:47:38'),
(22, 0, 'icon-03-04', NULL, NULL, NULL, 'icon-03-04.png', 1, NULL, '2017-10-10 00:47:38', '2017-10-10 00:47:38'),
(23, 0, 'icon-03-05', NULL, NULL, NULL, 'icon-03-05.png', 1, NULL, '2017-10-10 00:47:38', '2017-10-10 00:47:38'),
(24, 0, 'icon-03-06', NULL, NULL, NULL, 'icon-03-06.png', 1, NULL, '2017-10-10 00:47:39', '2017-10-10 00:47:39'),
(25, 0, 'info-icon', NULL, NULL, NULL, 'info-icon.png', 1, NULL, '2017-10-10 00:47:39', '2017-10-10 00:47:39'),
(26, 0, 'info-icon2', NULL, NULL, NULL, 'info-icon2.png', 1, NULL, '2017-10-10 00:47:40', '2017-10-10 00:47:40'),
(27, 0, 'info-icon3', NULL, NULL, NULL, 'info-icon3.png', 1, NULL, '2017-10-10 00:47:40', '2017-10-10 00:47:40'),
(28, 0, 'chart', NULL, NULL, NULL, 'chart.png', 1, NULL, '2017-10-10 04:14:12', '2017-10-10 04:14:12'),
(29, 0, 'seo_opti', NULL, NULL, NULL, 'seo_opti.jpg', 1, NULL, '2017-10-10 04:21:52', '2017-10-10 04:21:52'),
(34, 0, 'team1', NULL, NULL, NULL, 'team1.jpg', 1, NULL, '2017-10-12 01:33:16', '2017-10-12 01:33:16'),
(35, 0, 'team2', NULL, NULL, NULL, 'team2.jpg', 1, NULL, '2017-10-12 01:33:16', '2017-10-12 01:33:16'),
(36, 0, 'team3', NULL, NULL, NULL, 'team3.jpg', 1, NULL, '2017-10-12 01:33:16', '2017-10-12 01:33:16'),
(37, 0, 'team4', NULL, NULL, NULL, 'team4.jpg', 1, NULL, '2017-10-12 01:33:17', '2017-10-12 01:33:17'),
(38, 0, 'author-img', NULL, NULL, NULL, 'author-img.png', 1, NULL, '2017-10-12 03:23:34', '2017-10-12 03:23:34'),
(39, 0, 'clogo2', NULL, NULL, NULL, 'clogo2.png', 1, NULL, '2017-10-12 03:24:01', '2017-10-12 03:24:01'),
(40, 0, 'clogo3', NULL, NULL, NULL, 'clogo3.png', 1, NULL, '2017-10-12 03:24:01', '2017-10-12 03:24:01'),
(41, 0, '1', NULL, NULL, NULL, '1_1.jpg', 1, NULL, '2017-10-14 21:52:04', '2017-10-14 21:52:04'),
(42, 0, '2', NULL, NULL, NULL, '2.jpg', 1, NULL, '2017-10-14 21:52:04', '2017-10-14 21:52:04'),
(43, 0, '3', NULL, NULL, NULL, '3.jpg', 1, NULL, '2017-10-14 21:52:04', '2017-10-14 21:52:04'),
(44, 0, '4', NULL, NULL, NULL, '4.jpg', 1, NULL, '2017-10-14 21:52:05', '2017-10-14 21:52:05'),
(45, 0, '5', NULL, NULL, NULL, '5.jpg', 1, NULL, '2017-10-14 21:52:05', '2017-10-14 21:52:05'),
(46, 0, '6', NULL, NULL, NULL, '6.jpg', 1, NULL, '2017-10-14 21:52:05', '2017-10-14 21:52:05'),
(47, 0, '7', NULL, NULL, NULL, '7.jpg', 1, NULL, '2017-10-14 21:52:05', '2017-10-14 21:52:05'),
(48, 0, '8', NULL, NULL, NULL, '8.jpg', 1, NULL, '2017-10-14 21:52:06', '2017-10-14 21:52:06'),
(49, 0, '9', NULL, NULL, NULL, '9.jpg', 1, NULL, '2017-10-14 21:52:06', '2017-10-14 21:52:06'),
(50, 0, '10', NULL, NULL, NULL, '10.jpg', 1, NULL, '2017-10-14 21:52:06', '2017-10-14 21:52:06'),
(51, 0, '11', NULL, NULL, NULL, '11.jpg', 1, NULL, '2017-10-14 21:52:07', '2017-10-14 21:52:07'),
(52, 0, '12', NULL, NULL, NULL, '12.jpg', 1, NULL, '2017-10-14 21:52:07', '2017-10-14 21:52:07'),
(53, 0, 'c1', NULL, NULL, NULL, 'c1.png', 1, NULL, '2017-10-15 02:23:05', '2017-10-15 02:23:05'),
(55, 0, 'c2', NULL, NULL, NULL, 'c2.png', 1, NULL, '2017-10-15 02:23:06', '2017-10-15 02:23:06'),
(56, 0, 'c3', NULL, NULL, NULL, 'c3.png', 1, NULL, '2017-10-15 02:23:06', '2017-10-15 02:23:06'),
(57, 0, '1', NULL, NULL, NULL, '1_2.jpg', 1, NULL, '2017-10-15 02:28:17', '2017-10-15 02:28:17'),
(58, 0, 'slider-img', NULL, NULL, NULL, 'slider-img.png', 1, NULL, '2017-10-15 03:23:33', '2017-10-15 03:23:33'),
(59, 0, 'activity-img', NULL, NULL, NULL, 'activity-img.png', 1, NULL, '2017-10-15 22:20:04', '2017-10-15 22:20:04'),
(60, 0, 'client1', NULL, NULL, NULL, 'client1.jpg', 1, NULL, '2017-10-16 01:08:41', '2017-10-16 01:08:41'),
(61, 0, 'client2', NULL, NULL, NULL, 'client2.jpg', 1, NULL, '2017-10-16 01:08:42', '2017-10-16 01:08:42'),
(62, 0, 'client3', NULL, NULL, NULL, 'client3.jpg', 1, NULL, '2017-10-16 01:08:42', '2017-10-16 01:08:42'),
(63, 0, 'client4', NULL, NULL, NULL, 'client4.jpg', 1, NULL, '2017-10-16 01:08:42', '2017-10-16 01:08:42'),
(64, 0, 'client5', NULL, NULL, NULL, 'client5.jpg', 1, NULL, '2017-10-16 01:08:42', '2017-10-16 01:08:42'),
(65, 0, 'client6', NULL, NULL, NULL, 'client6.jpg', 1, NULL, '2017-10-16 01:08:42', '2017-10-16 01:08:42'),
(66, 0, 'flogo', NULL, NULL, NULL, 'flogo.png', 1, NULL, '2017-10-17 00:32:31', '2017-10-17 00:32:31'),
(67, 0, 'thumb-service2', NULL, NULL, NULL, 'thumb-service2.png', 1, NULL, '2017-10-31 21:54:49', '2017-10-31 21:54:49'),
(68, 0, 'thumb-service1', NULL, NULL, NULL, 'thumb-service1.png', 1, NULL, '2017-10-31 21:54:58', '2017-10-31 21:54:58'),
(69, 0, '1', NULL, NULL, NULL, '1_2.png', 1, NULL, '2017-10-31 22:01:38', '2017-10-31 22:01:38'),
(70, 0, '2', NULL, NULL, NULL, '2_1.png', 1, NULL, '2017-10-31 22:01:39', '2017-10-31 22:01:39'),
(71, 0, '3', NULL, NULL, NULL, '3_1.png', 1, NULL, '2017-10-31 22:01:39', '2017-10-31 22:01:39'),
(72, 0, '4', NULL, NULL, NULL, '4_1.png', 1, NULL, '2017-10-31 22:01:40', '2017-10-31 22:01:40'),
(73, 0, '5', NULL, NULL, NULL, '5_1.png', 1, NULL, '2017-10-31 22:01:40', '2017-10-31 22:01:40'),
(74, 0, '6', NULL, NULL, NULL, '6_1.png', 1, NULL, '2017-10-31 22:01:41', '2017-10-31 22:01:41'),
(75, 0, '7', NULL, NULL, NULL, '7_1.png', 1, NULL, '2017-10-31 22:01:41', '2017-10-31 22:01:41'),
(76, 0, '8', NULL, NULL, NULL, '8_1.png', 1, NULL, '2017-10-31 22:01:42', '2017-10-31 22:01:42'),
(77, 0, 'video_bg', NULL, NULL, NULL, 'video_bg.png', 1, NULL, '2017-11-06 21:17:39', '2017-11-06 21:17:39'),
(78, 0, 'money-back', NULL, NULL, NULL, 'money-back.png', 1, NULL, '2017-11-08 00:55:18', '2017-11-08 00:55:18'),
(79, 0, 'unique-content', NULL, NULL, NULL, 'unique-content.png', 1, NULL, '2017-11-08 00:55:42', '2017-11-08 00:55:42'),
(89, 0, 'Engr. Mizanur Rahman Khan', NULL, NULL, NULL, 'mizan_sohag123_3.jpg', 0, 1, '2017-11-13 03:31:59', '2017-12-19 06:00:32'),
(94, 0, NULL, NULL, NULL, NULL, 'mizan.eee.uap.jpg', 0, NULL, '2017-11-13 21:23:48', '2017-11-13 21:23:48'),
(95, 0, 'paypal', NULL, NULL, NULL, 'paypal.png', 1, NULL, '2017-11-15 22:13:10', '2017-11-15 22:13:10'),
(96, 0, 'visa', NULL, NULL, NULL, 'visa.png', 1, NULL, '2017-11-15 22:13:23', '2017-11-15 22:13:23'),
(97, 0, 'mastercard', NULL, NULL, NULL, 'mastercard.png', 1, NULL, '2017-11-15 22:13:31', '2017-11-15 22:13:31'),
(98, 0, 'Screenshot from 2017-12-03 16-08-05', NULL, NULL, NULL, 'screenshot_from_2017-12-03_16-08-05.png', 1, NULL, '2017-12-03 05:08:28', '2017-12-03 05:08:28'),
(99, 0, '12', NULL, NULL, NULL, '12_1.jpg', 0, NULL, '2017-12-04 23:42:33', '2017-12-04 23:42:33'),
(100, 0, '12', NULL, NULL, NULL, '12_2.jpg', 0, NULL, '2017-12-05 00:04:30', '2017-12-05 00:04:30'),
(101, 0, '12', NULL, NULL, NULL, '12_3.jpg', 0, NULL, '2017-12-05 00:05:49', '2017-12-05 00:05:49'),
(102, 0, '12', NULL, NULL, NULL, '12_4.jpg', 0, NULL, '2017-12-05 00:06:12', '2017-12-05 00:06:12'),
(103, 0, 'P_20170709_085717_1_BF_p_1', NULL, NULL, NULL, 'p_20170709_085717_1_bf_p_1_1.jpg', 0, NULL, '2017-12-05 00:08:01', '2017-12-05 00:08:01'),
(104, 0, '12', NULL, NULL, NULL, '12_5.jpg', 0, NULL, '2017-12-05 00:08:36', '2017-12-05 00:08:36'),
(105, 0, '12', NULL, NULL, NULL, '12_6.jpg', 0, NULL, '2017-12-05 00:15:33', '2017-12-05 00:15:33'),
(106, 0, 'Doodle Digital', NULL, NULL, NULL, 'doodle_digital.png', 0, NULL, '2017-12-05 00:23:23', '2017-12-05 00:23:23'),
(107, 0, 'signature', NULL, NULL, NULL, 'signature.png', 1, NULL, '2017-12-06 21:28:01', '2017-12-06 21:28:01'),
(108, 0, 'team4', NULL, NULL, NULL, 'team4_1.jpg', 1, NULL, '2017-12-07 04:04:44', '2017-12-07 04:04:44'),
(109, 0, 'team3', NULL, NULL, NULL, 'team3_1.jpg', 1, NULL, '2017-12-07 04:04:45', '2017-12-07 04:04:45'),
(110, 0, 'team2', NULL, NULL, NULL, 'team2_1.jpg', 1, NULL, '2017-12-07 04:04:45', '2017-12-07 04:04:45'),
(111, 0, 'team1', NULL, NULL, NULL, 'team1_1.jpg', 1, NULL, '2017-12-07 04:04:46', '2017-12-07 04:04:46'),
(112, 0, 'smthemoption', NULL, NULL, NULL, 'smthemoption', 1, NULL, '2017-12-07 04:58:05', '2017-12-07 04:58:05'),
(114, 0, 'logo-1478078360', NULL, NULL, NULL, 'logo-1478078360.png', 1, NULL, '2017-12-07 04:59:03', '2017-12-07 04:59:03'),
(115, 0, 'pro', NULL, NULL, NULL, 'pro.csv', 1, NULL, '2017-12-07 05:03:12', '2017-12-07 05:03:12'),
(118, 0, 'Interview_question_by_mizan', NULL, NULL, NULL, 'interview_question_by_mizan.pdf', 1, NULL, '2017-12-07 05:39:58', '2017-12-07 05:39:58'),
(119, 0, 'index', NULL, NULL, NULL, 'index.php', 1, NULL, '2017-12-07 05:44:05', '2017-12-07 05:44:05'),
(143, 1, 'kumu', NULL, NULL, NULL, 'kumu_1.png', 1, NULL, '2017-12-09 03:02:22', '2017-12-09 03:02:22'),
(150, 0, 'f9467c2466cfedd730fa55cad4182b57-5a2818b357040', NULL, NULL, NULL, 'f9467c2466cfedd730fa55cad4182b57-5a2818b357040.jpg', 1, NULL, '2017-12-16 21:48:43', '2017-12-16 21:48:43'),
(151, 0, 'e7dd2780be2ff92b12b4a9b269638cd9-59f966c71cb6f', NULL, NULL, NULL, 'e7dd2780be2ff92b12b4a9b269638cd9-59f966c71cb6f.jpg', 1, NULL, '2017-12-16 21:48:43', '2017-12-16 21:48:43'),
(152, 0, 'b3779b1ee45439c7acb2905802930348-5a2818b3d30c7', NULL, NULL, NULL, 'b3779b1ee45439c7acb2905802930348-5a2818b3d30c7.jpg', 1, NULL, '2017-12-16 21:48:44', '2017-12-16 21:48:44'),
(153, 0, 'ad2a2116427dc63be977a3856a2f09f2-5a2818b3483cb', NULL, NULL, NULL, 'ad2a2116427dc63be977a3856a2f09f2-5a2818b3483cb.jpg', 1, NULL, '2017-12-16 21:48:44', '2017-12-16 21:48:44'),
(154, 0, 'sadfd', NULL, NULL, NULL, '499b6fa92fc699e799702b398e001d39-5a281983db797.png', 1, 1, '2017-12-16 21:48:46', '2017-12-19 21:16:32'),
(155, 0, '88f2a614e6b8f5dbbf35cbf196b8f73f-5a2818b4391d2', NULL, NULL, NULL, '88f2a614e6b8f5dbbf35cbf196b8f73f-5a2818b4391d2.jpg', 1, NULL, '2017-12-16 21:48:47', '2017-12-16 21:48:47'),
(156, 0, '36bd054f63d0897811db87660877efdf-5a2818b4ad147', NULL, NULL, NULL, '36bd054f63d0897811db87660877efdf-5a2818b4ad147.jpg', 1, NULL, '2017-12-16 21:48:47', '2017-12-16 21:48:47'),
(157, 0, 'sorisa', 'asdf', 'sadf', 'asdf', '9b3d4ad7e644671ae619ba43027a2af5-5a275ef5504f9.jpg', 1, 1, '2017-12-16 21:48:48', '2017-12-19 03:05:55'),
(158, 0, 'Flowser', NULL, NULL, NULL, '5b2484ae7ad302f5c90cd6b5478a94f0-5a2818b30c827.jpg', 1, 1, '2017-12-16 21:48:48', '2017-12-19 03:01:43'),
(159, 0, 'instragram_banner', NULL, NULL, NULL, 'instragram_banner.jpg', 1, NULL, '2017-12-28 03:02:46', '2017-12-28 03:02:46'),
(160, 0, 'title', NULL, NULL, NULL, 'title.png', 1, NULL, '2018-01-01 05:15:26', '2018-01-01 05:15:26'),
(162, 0, 'content_writing_banner', NULL, NULL, NULL, 'content_writing_banner.jpg', 1, NULL, '2018-01-01 06:29:24', '2018-01-01 06:29:24'),
(163, 0, 'particular_package_banner', NULL, NULL, NULL, 'particular_package_banner.jpg', 1, NULL, '2018-01-01 21:30:08', '2018-01-01 21:30:08'),
(164, 0, 'video_marketing_banner', NULL, NULL, NULL, 'video_marketing_banner.jpg', 1, NULL, '2018-01-02 00:05:44', '2018-01-02 00:05:44'),
(165, 0, 'organic_packge', NULL, NULL, NULL, 'organic_packge.jpg', 1, NULL, '2018-01-02 00:12:30', '2018-01-02 00:12:30'),
(166, 0, 'facebook_marketing_banner', NULL, NULL, NULL, 'facebook_marketing_banner.jpg', 1, NULL, '2018-01-02 01:55:29', '2018-01-02 01:55:29'),
(167, 0, 'local seo package', 'cap', 'alt', 'tst', 'local_seo_package.jpg', 1, 1, '2018-01-03 00:38:54', '2018-01-10 00:48:24'),
(168, 0, 'social_media_marketing_packages', NULL, NULL, NULL, 'social_media_marketing_packages.jpg', 1, NULL, '2018-01-03 00:54:31', '2018-01-03 00:54:31'),
(169, 0, 'twitter_marketing', NULL, NULL, NULL, 'twitter_marketing.jpg', 1, NULL, '2018-01-03 00:59:09', '2018-01-03 00:59:09'),
(171, 0, 'header-text1', NULL, NULL, NULL, 'header-text1.png', 1, NULL, '2018-01-07 23:47:31', '2018-01-07 23:47:31'),
(172, 1, 'doodle_digital_orders_20180110101028', NULL, NULL, NULL, 'doodle_digital_orders_20180110101028.xlsx', 1, NULL, '2018-01-10 04:11:43', '2018-01-10 04:11:43'),
(173, 1, 'doodle_digital_subscribers_20180109034459', NULL, NULL, NULL, 'doodle_digital_subscribers_20180109034459.xlsx', 1, NULL, '2018-01-10 04:16:44', '2018-01-10 04:16:44'),
(174, 0, 'doodle digital favicon', NULL, NULL, NULL, 'doodledigital-favicon.png', 1, 1, '2018-01-20 06:47:32', '2018-01-20 06:47:49'),
(175, 0, 'doodle', NULL, NULL, NULL, 'doodle.jpg', 1, NULL, '2018-01-22 06:02:09', '2018-01-22 06:02:09'),
(177, 0, '36bd054f63d0897811db87660877efdf-5a2818b4ad147', NULL, NULL, NULL, '36bd054f63d0897811db87660877efdf-5a2818b4ad147_1.jpg', 1, NULL, '2018-01-24 05:01:52', '2018-01-24 05:01:52'),
(178, 0, '01', NULL, NULL, NULL, '01.png', 1, NULL, '2018-01-25 03:39:08', '2018-01-25 03:39:08'),
(179, 0, '02', NULL, NULL, NULL, '02.png', 1, NULL, '2018-01-25 03:39:11', '2018-01-25 03:39:11'),
(180, 0, '03', NULL, NULL, NULL, '03.png', 1, NULL, '2018-01-25 03:39:14', '2018-01-25 03:39:14'),
(181, 0, '04', NULL, NULL, NULL, '04.png', 1, NULL, '2018-01-25 03:39:16', '2018-01-25 03:39:16'),
(182, 0, '05', NULL, NULL, NULL, '05.png', 1, NULL, '2018-01-25 03:39:19', '2018-01-25 03:39:19'),
(183, 0, '06', NULL, NULL, NULL, '06.png', 1, NULL, '2018-01-25 03:39:22', '2018-01-25 03:39:22'),
(184, 0, '01', NULL, NULL, NULL, '01_1.png', 1, NULL, '2018-01-25 04:11:43', '2018-01-25 04:11:43'),
(185, 0, '02', NULL, NULL, NULL, '02_1.png', 1, NULL, '2018-01-25 04:11:45', '2018-01-25 04:11:45'),
(186, 0, '03', NULL, NULL, NULL, '03_1.png', 1, NULL, '2018-01-25 04:11:48', '2018-01-25 04:11:48'),
(187, 0, '04', NULL, NULL, NULL, '04_1.png', 1, NULL, '2018-01-25 04:11:50', '2018-01-25 04:11:50'),
(188, 0, '05', NULL, NULL, NULL, '05_1.png', 1, NULL, '2018-01-25 04:11:53', '2018-01-25 04:11:53'),
(189, 0, '06', NULL, NULL, NULL, '06_1.png', 1, NULL, '2018-01-25 04:11:56', '2018-01-25 04:11:56'),
(190, 0, '07', NULL, NULL, NULL, '07.png', 1, NULL, '2018-01-25 04:11:59', '2018-01-25 04:11:59'),
(191, 0, '08', NULL, NULL, NULL, '08.png', 1, NULL, '2018-01-25 04:12:01', '2018-01-25 04:12:01'),
(192, 0, '01', NULL, NULL, NULL, '01_2.png', 1, NULL, '2018-01-25 04:15:00', '2018-01-25 04:15:00'),
(193, 0, '02', NULL, NULL, NULL, '02_2.png', 1, NULL, '2018-01-25 04:15:03', '2018-01-25 04:15:03'),
(194, 0, '03', NULL, NULL, NULL, '03_2.png', 1, NULL, '2018-01-25 04:15:05', '2018-01-25 04:15:05'),
(195, 0, '04', NULL, NULL, NULL, '04_2.png', 1, NULL, '2018-01-25 04:15:07', '2018-01-25 04:15:07'),
(196, 0, '05', NULL, NULL, NULL, '05_2.png', 1, NULL, '2018-01-25 04:15:10', '2018-01-25 04:15:10'),
(197, 0, '06', NULL, NULL, NULL, '06_2.png', 1, NULL, '2018-01-25 04:15:13', '2018-01-25 04:15:13'),
(198, 0, '07', NULL, NULL, NULL, '07_1.png', 1, NULL, '2018-01-25 04:15:16', '2018-01-25 04:15:16'),
(199, 0, '01', NULL, NULL, NULL, '01_3.png', 1, NULL, '2018-01-25 04:15:20', '2018-01-25 04:15:20'),
(200, 0, '02', NULL, NULL, NULL, '02_3.png', 1, NULL, '2018-01-25 04:15:23', '2018-01-25 04:15:23'),
(201, 0, '03', NULL, NULL, NULL, '03_3.png', 1, NULL, '2018-01-25 04:15:26', '2018-01-25 04:15:26'),
(202, 0, '04', NULL, NULL, NULL, '04_3.png', 1, NULL, '2018-01-25 04:15:29', '2018-01-25 04:15:29'),
(203, 0, '01', NULL, NULL, NULL, '01_4.png', 1, NULL, '2018-01-25 04:15:32', '2018-01-25 04:15:32'),
(204, 0, '02', NULL, NULL, NULL, '02_4.png', 1, NULL, '2018-01-25 04:15:35', '2018-01-25 04:15:35'),
(205, 0, '03', NULL, NULL, NULL, '03_4.png', 1, NULL, '2018-01-25 04:15:38', '2018-01-25 04:15:38'),
(206, 0, '04', NULL, NULL, NULL, '04_4.png', 1, NULL, '2018-01-25 04:15:41', '2018-01-25 04:15:41'),
(207, 0, '05', NULL, NULL, NULL, '05_3.png', 1, NULL, '2018-01-25 04:15:44', '2018-01-25 04:15:44'),
(208, 0, '06', NULL, NULL, NULL, '06_3.png', 1, NULL, '2018-01-25 04:15:47', '2018-01-25 04:15:47'),
(209, 0, '01', NULL, NULL, NULL, '01_5.png', 1, NULL, '2018-01-25 04:15:50', '2018-01-25 04:15:50'),
(210, 0, '02', NULL, NULL, NULL, '02_5.png', 1, NULL, '2018-01-25 04:15:53', '2018-01-25 04:15:53'),
(211, 0, '03', NULL, NULL, NULL, '03_5.png', 1, NULL, '2018-01-25 04:15:56', '2018-01-25 04:15:56'),
(212, 0, '04', NULL, NULL, NULL, '04_5.png', 1, NULL, '2018-01-25 04:15:59', '2018-01-25 04:15:59'),
(213, 0, '05', NULL, NULL, NULL, '05_4.png', 1, NULL, '2018-01-25 04:16:03', '2018-01-25 04:16:03'),
(214, 0, '06', NULL, NULL, NULL, '06_4.png', 1, NULL, '2018-01-25 04:16:06', '2018-01-25 04:16:06'),
(215, 0, '07', NULL, NULL, NULL, '07_2.png', 1, NULL, '2018-01-25 04:16:09', '2018-01-25 04:16:09'),
(216, 0, '01', NULL, NULL, NULL, '01_6.png', 1, NULL, '2018-01-25 04:16:12', '2018-01-25 04:16:12'),
(217, 0, '02', NULL, NULL, NULL, '02_6.png', 1, NULL, '2018-01-25 04:16:15', '2018-01-25 04:16:15'),
(218, 0, '03', NULL, NULL, NULL, '03_6.png', 1, NULL, '2018-01-25 04:16:18', '2018-01-25 04:16:18'),
(219, 0, '04', NULL, NULL, NULL, '04_6.png', 1, NULL, '2018-01-25 04:16:22', '2018-01-25 04:16:22'),
(220, 0, '05', NULL, NULL, NULL, '05_5.png', 1, NULL, '2018-01-25 04:16:25', '2018-01-25 04:16:25'),
(221, 0, '06', NULL, NULL, NULL, '06_5.png', 1, NULL, '2018-01-25 04:16:28', '2018-01-25 04:16:28'),
(222, 0, '07', NULL, NULL, NULL, '07_3.png', 1, NULL, '2018-01-25 04:16:31', '2018-01-25 04:16:31'),
(223, 0, '08', NULL, NULL, NULL, '08_1.png', 1, NULL, '2018-01-25 04:16:34', '2018-01-25 04:16:34'),
(224, 0, 'chart', NULL, NULL, NULL, 'chart_1.png', 1, NULL, '2018-02-05 01:18:17', '2018-02-05 01:18:17'),
(227, 0, '2', NULL, NULL, NULL, '2_1.jpg', 1, NULL, '2018-02-28 02:55:53', '2018-02-28 02:55:53'),
(228, 0, '3', NULL, NULL, NULL, '3_1.jpg', 1, NULL, '2018-02-28 02:55:54', '2018-02-28 02:55:54'),
(230, 0, 'organic_packge', NULL, NULL, NULL, 'organic_packge_1.jpg', 1, NULL, '2018-02-28 03:01:16', '2018-02-28 03:01:16'),
(231, 0, 'Engr. Mizanur Rahman Khan', NULL, 'Engr. Mizanur Rahman Khan', NULL, '26239246_1794661443900928_2145373980689872866_n.jpg', 1, 1, '2018-02-28 03:07:18', '2018-03-02 22:37:29'),
(232, 0, 'heads_madman', NULL, NULL, NULL, 'heads_madman.jpg', 1, NULL, '2018-02-28 03:13:25', '2018-02-28 03:13:25'),
(233, 0, 'Farid', NULL, NULL, NULL, 'image.png', 1, 1, '2018-02-28 03:25:34', '2018-03-02 22:37:47'),
(234, 0, 'flogo', NULL, NULL, NULL, 'flogo_1.png', 1, NULL, '2018-03-02 23:13:14', '2018-03-02 23:13:14'),
(235, 0, '01. New Laravel & NodeJS Project  Shopping Cart', NULL, NULL, NULL, '01._new_laravel_a_nodejs_project_shopping_cart.mp4', 1, NULL, '2018-03-03 02:13:04', '2018-03-03 02:13:04'),
(236, 0, 'iphone_6_original', NULL, NULL, NULL, 'iphone_6_original.mp3', 1, NULL, '2018-03-03 05:12:52', '2018-03-03 05:12:52'),
(237, 0, '40709749-wordpress-advanced-restaurant-menu-manager-license', NULL, NULL, NULL, '40709749-wordpress-advanced-restaurant-menu-manager-license.pdf', 1, NULL, '2018-03-03 05:27:34', '2018-03-03 05:27:34'),
(238, 0, 'banner1-bg', NULL, NULL, NULL, 'banner1-bg.png', 1, NULL, '2018-03-12 22:24:07', '2018-03-12 22:24:07'),
(239, 0, 'banner1', NULL, NULL, NULL, 'banner1.png', 1, NULL, '2018-03-12 22:24:17', '2018-03-12 22:24:17'),
(240, 0, 'banner2', NULL, NULL, NULL, 'banner2.png', 1, NULL, '2018-03-12 22:24:25', '2018-03-12 22:24:25'),
(241, 0, 'banner2-bg', NULL, NULL, NULL, 'banner2-bg.png', 1, NULL, '2018-03-12 22:24:29', '2018-03-12 22:24:29'),
(242, 0, 'banner3', NULL, NULL, NULL, 'banner3.png', 1, NULL, '2018-03-12 22:24:38', '2018-03-12 22:24:38'),
(243, 0, 'banner3-bg', NULL, NULL, NULL, 'banner3-bg.png', 1, NULL, '2018-03-12 22:24:43', '2018-03-12 22:24:43'),
(244, 0, 'banner4', NULL, NULL, NULL, 'banner4.png', 1, NULL, '2018-03-12 22:24:52', '2018-03-12 22:24:52'),
(245, 0, 'banner5', NULL, NULL, NULL, 'banner5.png', 1, NULL, '2018-03-12 22:25:03', '2018-03-12 22:25:03'),
(246, 0, 'home-banner', NULL, NULL, NULL, 'home-banner.png', 1, NULL, '2018-03-12 22:25:11', '2018-03-12 22:25:11'),
(247, 0, 'home-banner2', NULL, NULL, NULL, 'home-banner2.png', 1, NULL, '2018-03-12 22:25:20', '2018-03-12 22:25:20'),
(248, 0, 'shap', NULL, NULL, NULL, 'shap.png', 1, NULL, '2018-03-12 22:25:25', '2018-03-12 22:25:25'),
(249, 0, 'seo-opt', NULL, NULL, NULL, 'seo-opt.png', 1, NULL, '2018-03-12 23:40:16', '2018-03-12 23:40:16'),
(250, 0, 'seo_image', NULL, NULL, NULL, 'seo_image.png', 1, NULL, '2018-03-13 00:35:14', '2018-03-13 00:35:14'),
(251, 0, 'btn', NULL, NULL, NULL, 'btn.png', 1, NULL, '2018-03-13 01:56:57', '2018-03-13 01:56:57'),
(252, 0, 'Amazon', NULL, NULL, NULL, 'amazon.png', 1, NULL, '2018-03-13 01:57:04', '2018-03-13 01:57:04'),
(253, 0, 'Content', NULL, NULL, NULL, 'content.png', 1, NULL, '2018-03-13 01:57:11', '2018-03-13 01:57:11'),
(254, 0, 'Facebook', NULL, NULL, NULL, 'facebook.png', 1, NULL, '2018-03-13 01:57:19', '2018-03-13 01:57:19'),
(255, 0, 'great', NULL, NULL, NULL, 'great.png', 1, NULL, '2018-03-13 01:57:26', '2018-03-13 01:57:26'),
(256, 0, 'Instagram', NULL, NULL, NULL, 'instagram.png', 1, NULL, '2018-03-13 01:57:33', '2018-03-13 01:57:33'),
(257, 0, 'Local', NULL, NULL, NULL, 'local.png', 1, NULL, '2018-03-13 01:57:41', '2018-03-13 01:57:41'),
(258, 0, 'Organic', NULL, NULL, NULL, 'organic.png', 1, NULL, '2018-03-13 01:57:48', '2018-03-13 01:57:48'),
(259, 0, 'Social ', NULL, NULL, NULL, 'social_.png', 1, NULL, '2018-03-13 01:57:56', '2018-03-13 01:57:56'),
(260, 0, 'twitter', 'test', 'test', 'test', 'twitter.png', 1, 1, '2018-03-13 01:58:03', '2018-03-13 02:14:58'),
(261, 0, 'Video', NULL, NULL, NULL, 'video.png', 1, NULL, '2018-03-13 01:58:09', '2018-03-13 01:58:09'),
(264, 0, 'images', NULL, NULL, NULL, 'images.png', 1, NULL, '2018-03-13 22:26:32', '2018-03-13 22:26:32'),
(265, 0, 'full-screen', NULL, NULL, NULL, 'full-screen.png', 1, NULL, '2018-03-15 05:28:07', '2018-03-15 05:28:07'),
(266, 0, 'hd', NULL, NULL, NULL, 'hd.png', 1, NULL, '2018-03-15 05:28:08', '2018-03-15 05:28:08'),
(267, 0, 'pause_icon', NULL, NULL, NULL, 'pause_icon.png', 1, NULL, '2018-03-15 05:28:12', '2018-03-15 05:28:12'),
(268, 0, 'plac-icon1', NULL, NULL, NULL, 'plac-icon1.png', 1, NULL, '2018-03-15 05:28:14', '2018-03-15 05:28:14'),
(269, 0, 'plac-icon2', NULL, NULL, NULL, 'plac-icon2.png', 1, NULL, '2018-03-15 05:28:15', '2018-03-15 05:28:15'),
(270, 0, 'plac-icon3', NULL, NULL, NULL, 'plac-icon3.png', 1, NULL, '2018-03-15 05:28:17', '2018-03-15 05:28:17'),
(271, 0, 'plac-icon4', NULL, NULL, NULL, 'plac-icon4.png', 1, NULL, '2018-03-15 05:28:19', '2018-03-15 05:28:19'),
(272, 0, 'play_left_icon', NULL, NULL, NULL, 'play_left_icon.png', 1, NULL, '2018-03-15 05:28:20', '2018-03-15 05:28:20'),
(273, 0, 'play_right_icon', NULL, NULL, NULL, 'play_right_icon.png', 1, NULL, '2018-03-15 05:28:22', '2018-03-15 05:28:22'),
(274, 0, 'seo-opt', NULL, NULL, NULL, 'seo-opt_1.png', 1, NULL, '2018-03-15 05:28:30', '2018-03-15 05:28:30'),
(275, 0, 'seo-opt1', NULL, NULL, NULL, 'seo-opt1.png', 1, NULL, '2018-03-15 05:28:39', '2018-03-15 05:28:39'),
(276, 0, 'video-cursor', NULL, NULL, NULL, 'video-cursor.png', 1, NULL, '2018-03-15 05:28:41', '2018-03-15 05:28:41'),
(277, 0, 'voliume', NULL, NULL, NULL, 'voliume.png', 1, NULL, '2018-03-15 05:28:42', '2018-03-15 05:28:42'),
(278, 0, 'video-poster', NULL, NULL, NULL, 'video-poster.png', 1, NULL, '2018-03-17 23:43:58', '2018-03-17 23:43:58'),
(279, 0, 'why-choose-img', NULL, NULL, NULL, 'why-choose-img.png', 1, NULL, '2018-03-18 01:39:07', '2018-03-18 01:39:07'),
(280, 0, 'why-choose-img1', NULL, NULL, NULL, 'why-choose-img1.png', 1, NULL, '2018-03-18 01:39:21', '2018-03-18 01:39:21'),
(282, 0, 'blog1', NULL, NULL, NULL, 'blog1.png', 1, NULL, '2018-03-18 02:06:05', '2018-03-18 02:06:05'),
(283, 0, 'blog-banner', NULL, NULL, NULL, 'blog-banner.png', 1, NULL, '2018-03-18 03:47:52', '2018-03-18 03:47:52'),
(284, 0, 'blog-fetured-post', NULL, NULL, NULL, 'blog-fetured-post.png', 1, NULL, '2018-03-18 03:49:48', '2018-03-18 03:49:48'),
(285, 0, 'add-banner', NULL, NULL, NULL, 'add-banner.png', 1, NULL, '2018-03-18 22:11:39', '2018-03-18 22:11:39'),
(286, 0, 'How to get or attract traffic on Social Media', NULL, NULL, NULL, 'how_to_get_or_attract_traffic_on_social_media.png', 1, NULL, '2018-03-20 00:33:00', '2018-03-20 00:33:00'),
(287, 0, 'How to viral a video', NULL, NULL, NULL, 'how_to_viral_a_video.png', 1, NULL, '2018-03-20 03:56:53', '2018-03-20 03:56:53'),
(288, 0, 'Is social media changing our lifestyle', NULL, NULL, NULL, 'is_social_media_changing_our_lifestyle.png', 1, NULL, '2018-03-20 04:00:23', '2018-03-20 04:00:23'),
(289, 0, 'Press-releases for marketing - pros and cons', NULL, NULL, NULL, 'press-releases_for_marketing_-_pros_and_cons.png', 1, NULL, '2018-03-20 04:06:49', '2018-03-20 04:06:49'),
(290, 0, 'Want to know about Twitter Ads', NULL, NULL, NULL, 'want_to_know_about_twitter_ads.png', 1, NULL, '2018-03-20 04:12:11', '2018-03-20 04:12:11'),
(291, 0, 'What is tiered backlink', NULL, NULL, NULL, 'what_is_tiered_backlink.png', 1, NULL, '2018-03-20 04:15:34', '2018-03-20 04:15:34'),
(292, 0, 'bangladesh-flag', NULL, NULL, NULL, 'bangladesh-flag.png', 1, NULL, '2018-03-21 00:01:20', '2018-03-21 00:01:20'),
(293, 0, 'usa-flag', NULL, NULL, NULL, 'usa-flag.png', 1, NULL, '2018-03-21 00:03:20', '2018-03-21 00:03:20'),
(294, 0, 'soudi-flag', NULL, NULL, NULL, 'soudi-flag.png', 1, NULL, '2018-03-21 00:04:53', '2018-03-21 00:04:53'),
(295, 0, 'socail-flag', NULL, NULL, NULL, 'socail-flag.png', 1, NULL, '2018-03-21 00:07:37', '2018-03-21 00:07:37'),
(296, 0, 'contact-info-bg', NULL, NULL, NULL, 'contact-info-bg.png', 1, NULL, '2018-03-21 00:09:02', '2018-03-21 00:09:02'),
(297, 0, 'contact-info-bg1', NULL, NULL, NULL, 'contact-info-bg1.png', 1, NULL, '2018-03-21 02:08:47', '2018-03-21 02:08:47'),
(298, 0, 'clogo', NULL, NULL, NULL, 'clogo.png', 1, NULL, '2018-03-27 21:52:14', '2018-03-27 21:52:14'),
(299, 0, 'footer-new-logo', NULL, NULL, NULL, 'footer-new-logo.png', 1, NULL, '2018-03-27 22:39:12', '2018-03-27 22:39:12'),
(300, 0, 'through-our-action2', NULL, NULL, NULL, 'through-our-action2.png', 1, NULL, '2018-03-28 03:01:27', '2018-03-28 03:01:27'),
(301, 0, 'through-our-action1', NULL, NULL, NULL, 'through-our-action1.png', 1, NULL, '2018-03-28 03:01:34', '2018-03-28 03:01:34'),
(302, 0, 'through-our-action3', NULL, NULL, NULL, 'through-our-action3.png', 1, NULL, '2018-03-28 03:01:40', '2018-03-28 03:01:40'),
(303, 0, 'through-our-action4', NULL, NULL, NULL, 'through-our-action4.png', 1, NULL, '2018-03-28 03:01:49', '2018-03-28 03:01:49'),
(304, 0, 'case-detals-banner', NULL, NULL, NULL, 'case-detals-banner.jpg', 1, NULL, '2018-03-28 03:06:58', '2018-03-28 03:06:58'),
(305, 0, 'case-details-image', NULL, NULL, NULL, 'case-details-image.png', 1, NULL, '2018-03-28 03:07:31', '2018-03-28 03:07:31'),
(306, 0, 'key-element-img', NULL, NULL, NULL, 'key-element-img.png', 1, NULL, '2018-03-28 03:08:26', '2018-03-28 03:08:26'),
(307, 0, 'case-details-image2', NULL, NULL, NULL, 'case-details-image2.png', 1, NULL, '2018-03-28 04:34:17', '2018-03-28 04:34:17'),
(308, 0, 'case-details-image1', NULL, NULL, NULL, 'case-details-image1.png', 1, NULL, '2018-03-28 04:34:23', '2018-03-28 04:34:23'),
(309, 0, 'facebook-pkg-footer-icon', NULL, NULL, NULL, 'facebook-pkg-footer-icon.png', 1, NULL, '2018-03-28 22:06:45', '2018-03-28 22:06:45'),
(310, 0, 'instragram-pkg-footer-icon', NULL, NULL, NULL, 'instragram-pkg-footer-icon.png', 1, NULL, '2018-03-28 22:09:23', '2018-03-28 22:09:23'),
(311, 0, 'local-pakg-footer-icon', NULL, NULL, NULL, 'local-pakg-footer-icon.png', 1, NULL, '2018-03-28 22:18:22', '2018-03-28 22:18:22'),
(312, 0, 'organic-pkg-footer-icon', NULL, NULL, NULL, 'organic-pkg-footer-icon.png', 1, NULL, '2018-03-28 22:19:27', '2018-03-28 22:19:27'),
(313, 0, 'amazon-pkg-footer-icon', NULL, NULL, NULL, 'amazon-pkg-footer-icon.png', 1, NULL, '2018-03-28 22:27:55', '2018-03-28 22:27:55'),
(314, 0, 'socail-media-package-footer-icon', NULL, NULL, NULL, 'socail-media-package-footer-icon.png', 1, NULL, '2018-03-28 22:29:35', '2018-03-28 22:29:35'),
(315, 0, 'twitter-package-footer-icon', NULL, NULL, NULL, 'twitter-package-footer-icon.png', 1, NULL, '2018-03-28 22:31:33', '2018-03-28 22:31:33'),
(316, 0, 'video-packge-footer-icon', NULL, NULL, NULL, 'video-packge-footer-icon.png', 1, NULL, '2018-03-28 22:32:39', '2018-03-28 22:32:39'),
(317, 0, 'unique-content', NULL, NULL, NULL, 'unique-content_1.png', 1, NULL, '2018-03-28 22:33:39', '2018-03-28 22:33:39'),
(318, 0, 'branding', NULL, NULL, NULL, 'branding.png', 1, NULL, '2018-03-29 02:16:41', '2018-03-29 02:16:41'),
(319, 0, 'content_seeding', NULL, NULL, NULL, 'content_seeding.png', 1, NULL, '2018-03-29 02:17:19', '2018-03-29 02:17:19'),
(320, 0, 'digital_advertising', NULL, NULL, NULL, 'digital_advertising.png', 1, NULL, '2018-03-29 02:17:44', '2018-03-29 02:17:44'),
(321, 0, 'creative_service', NULL, NULL, NULL, 'creative_service.png', 1, NULL, '2018-03-29 02:18:12', '2018-03-29 02:18:12'),
(322, 0, 'socail_media_strategist', NULL, NULL, NULL, 'socail_media_strategist.png', 1, NULL, '2018-03-29 02:18:39', '2018-03-29 02:18:39'),
(323, 0, 'media_planning', NULL, NULL, NULL, 'media_planning.png', 1, NULL, '2018-03-29 02:19:14', '2018-03-29 02:19:14'),
(324, 0, '21', NULL, NULL, NULL, '21.jpg', 1, NULL, '2018-03-29 04:03:48', '2018-03-29 04:03:48'),
(325, 0, '3', NULL, NULL, NULL, '3_2.jpg', 1, NULL, '2018-03-29 04:04:25', '2018-03-29 04:04:25'),
(326, 0, '4', NULL, NULL, NULL, '4_1.jpg', 1, NULL, '2018-03-29 04:04:26', '2018-03-29 04:04:26'),
(327, 0, '5', NULL, NULL, NULL, '5_1.jpg', 1, NULL, '2018-03-29 04:04:27', '2018-03-29 04:04:27'),
(328, 0, '6', NULL, NULL, NULL, '6_1.jpg', 1, NULL, '2018-03-29 04:04:27', '2018-03-29 04:04:27'),
(329, 0, '7', NULL, NULL, NULL, '7_1.jpg', 1, NULL, '2018-03-29 04:04:28', '2018-03-29 04:04:28'),
(330, 0, '8', NULL, NULL, NULL, '8_1.jpg', 1, NULL, '2018-03-29 04:04:29', '2018-03-29 04:04:29'),
(331, 0, '9', NULL, NULL, NULL, '9_1.jpg', 1, NULL, '2018-03-29 04:04:30', '2018-03-29 04:04:30'),
(332, 0, '10', NULL, NULL, NULL, '10_1.jpg', 1, NULL, '2018-03-29 04:04:30', '2018-03-29 04:04:30'),
(333, 0, '11', NULL, NULL, NULL, '11_1.jpg', 1, NULL, '2018-03-29 04:04:31', '2018-03-29 04:04:31'),
(334, 0, '12', NULL, NULL, NULL, '12_7.jpg', 1, NULL, '2018-03-29 04:04:31', '2018-03-29 04:04:31'),
(335, 0, '13', NULL, NULL, NULL, '13.jpg', 1, NULL, '2018-03-29 04:04:32', '2018-03-29 04:04:32'),
(336, 0, '14', NULL, NULL, NULL, '14.jpg', 1, NULL, '2018-03-29 04:04:33', '2018-03-29 04:04:33'),
(337, 0, '15', NULL, NULL, NULL, '15.jpg', 1, NULL, '2018-03-29 04:04:33', '2018-03-29 04:04:33'),
(338, 0, '16', NULL, NULL, NULL, '16.jpg', 1, NULL, '2018-03-29 04:04:34', '2018-03-29 04:04:34'),
(339, 0, '17', NULL, NULL, NULL, '17.jpg', 1, NULL, '2018-03-29 04:04:34', '2018-03-29 04:04:34'),
(340, 0, '18', NULL, NULL, NULL, '18.jpg', 1, NULL, '2018-03-29 04:04:35', '2018-03-29 04:04:35'),
(341, 0, '21', NULL, NULL, NULL, '21_1.jpg', 1, NULL, '2018-03-29 04:04:42', '2018-03-29 04:04:42'),
(342, 0, '20', NULL, NULL, NULL, '20.jpg', 1, NULL, '2018-03-29 04:04:43', '2018-03-29 04:04:43'),
(343, 0, '19', NULL, NULL, NULL, '19.jpg', 1, NULL, '2018-03-29 04:23:26', '2018-03-29 04:23:26'),
(344, 0, '10', NULL, NULL, NULL, '10_2.jpg', 1, NULL, '2018-03-29 04:23:27', '2018-03-29 04:23:27'),
(345, 0, '2', NULL, NULL, NULL, '2_2.jpg', 1, NULL, '2018-03-29 04:23:42', '2018-03-29 04:23:42'),
(346, 0, 'All-Image', NULL, NULL, NULL, 'all-image.jpg', 1, NULL, '2018-03-29 04:27:41', '2018-03-29 04:27:41'),
(347, 0, 's-details', NULL, NULL, NULL, 's-details.png', 1, NULL, '2018-03-29 04:36:00', '2018-03-29 04:36:00'),
(349, 0, 'satisfaction', NULL, NULL, NULL, 'satisfaction.png', 1, NULL, '2018-03-29 04:37:43', '2018-03-29 04:37:43'),
(350, 0, 'tanvir-bhai', NULL, NULL, NULL, 'tanvir-bhai.jpg', 1, NULL, '2018-03-29 04:38:58', '2018-03-29 04:38:58'),
(351, 0, 'riad', NULL, NULL, NULL, 'riad.jpg', 1, NULL, '2018-03-29 04:51:14', '2018-03-29 04:51:14'),
(352, 0, 'rajib-bhai', NULL, NULL, NULL, 'rajib-bhai.jpg', 1, NULL, '2018-03-29 04:51:23', '2018-03-29 04:51:23'),
(353, 0, 'clogo3', NULL, NULL, NULL, 'clogo3_1.png', 1, NULL, '2018-03-29 05:29:33', '2018-03-29 05:29:33'),
(354, 0, 'faucets_case_stady_desktop', NULL, NULL, NULL, 'faucets_case_stady_desktop.png', 1, NULL, '2018-04-01 03:32:21', '2018-04-01 03:32:21'),
(355, 0, 'faucets_case_stady_responsive', NULL, NULL, NULL, 'faucets_case_stady_responsive.png', 1, NULL, '2018-04-01 03:32:28', '2018-04-01 03:32:28'),
(356, 0, 'faucets_through_action1', NULL, NULL, NULL, 'faucets_through_action1.png', 1, NULL, '2018-04-01 03:32:35', '2018-04-01 03:32:35'),
(357, 0, 'faucets_through_action2', NULL, NULL, NULL, 'faucets_through_action2.png', 1, NULL, '2018-04-01 03:32:42', '2018-04-01 03:32:42'),
(358, 0, 'faucets_through_action3', NULL, NULL, NULL, 'faucets_through_action3.png', 1, NULL, '2018-04-01 03:32:49', '2018-04-01 03:32:49'),
(359, 0, 'faucets_through_action4', NULL, NULL, NULL, 'faucets_through_action4.png', 1, NULL, '2018-04-01 03:32:59', '2018-04-01 03:32:59'),
(360, 0, 'soppotingpro_case_stady_desktop', NULL, NULL, NULL, 'soppotingpro_case_stady_desktop.png', 1, NULL, '2018-04-01 03:33:07', '2018-04-01 03:33:07'),
(361, 0, 'soppotingpro_case_stady_responsive', NULL, NULL, NULL, 'soppotingpro_case_stady_responsive.png', 1, NULL, '2018-04-01 03:33:13', '2018-04-01 03:33:13'),
(362, 0, 'soppotingpro_throgu_action1', NULL, NULL, NULL, 'soppotingpro_throgu_action1.png', 1, NULL, '2018-04-01 03:33:19', '2018-04-01 03:33:19'),
(363, 0, 'soppotingpro_throgu_action2', NULL, NULL, NULL, 'soppotingpro_throgu_action2.png', 1, NULL, '2018-04-01 03:33:26', '2018-04-01 03:33:26'),
(364, 0, 'soppotingpro_throgu_action3', NULL, NULL, NULL, 'soppotingpro_throgu_action3.png', 1, NULL, '2018-04-01 03:33:36', '2018-04-01 03:33:36'),
(365, 0, 'sugges-lawresponsive', NULL, NULL, NULL, 'sugges-lawresponsive.png', 1, NULL, '2018-04-01 03:33:43', '2018-04-01 03:33:43'),
(366, 0, 'suggs_law_desktop', NULL, NULL, NULL, 'suggs_law_desktop.png', 1, NULL, '2018-04-01 03:33:51', '2018-04-01 03:33:51'),
(367, 0, 'kayak-case', NULL, NULL, NULL, 'kayak-case.png', 1, NULL, '2018-04-04 00:07:50', '2018-04-04 00:07:50'),
(368, 0, 'sppotting-case', NULL, NULL, NULL, 'sppotting-case.png', 1, NULL, '2018-04-04 00:17:44', '2018-04-04 00:17:44'),
(369, 0, 'case-hover-image', NULL, NULL, NULL, 'case-hover-image.jpg', 1, NULL, '2018-04-04 00:18:03', '2018-04-04 00:18:03'),
(370, 0, 'case1', NULL, NULL, NULL, 'case1.png', 1, NULL, '2018-04-04 00:18:11', '2018-04-04 00:18:11'),
(371, 0, 'faq-banner', NULL, NULL, NULL, 'faq-banner.png', 1, NULL, '2018-04-04 00:18:17', '2018-04-04 00:18:17'),
(372, 0, 'kayak', NULL, NULL, NULL, 'kayak.jpg', 1, NULL, '2018-04-04 00:18:18', '2018-04-04 00:18:18'),
(373, 0, 'kjs-law', NULL, NULL, NULL, 'kjs-law.png', 1, NULL, '2018-04-04 00:18:26', '2018-04-04 00:18:26'),
(374, 0, 'suges-low', NULL, NULL, NULL, 'suges-low.png', 1, NULL, '2018-04-04 00:18:33', '2018-04-04 00:18:33'),
(375, 0, '01_PAN GULF INDUSTRIAL SYSTEM CO.', NULL, NULL, NULL, '01_pan_gulf_industrial_system_co..jpg', 1, NULL, '2018-04-04 03:54:25', '2018-04-04 03:54:25'),
(376, 0, '02_HYUNDAI HEAVY INDUSTRIES', NULL, NULL, NULL, '02_hyundai_heavy_industries.jpg', 1, NULL, '2018-04-04 03:54:25', '2018-04-04 03:54:25'),
(377, 0, '03_MA\'ADEN CO.', NULL, NULL, NULL, '03_ma_aden_co..jpg', 1, NULL, '2018-04-04 03:54:26', '2018-04-04 03:54:26'),
(378, 0, '04_TWC ARABIA CO. LTD.', NULL, NULL, NULL, '04_twc_arabia_co._ltd..jpg', 1, NULL, '2018-04-04 03:54:26', '2018-04-04 03:54:26'),
(379, 0, '05_SAUDI ELECTRICITY CO. VENDOR NO-00501227', NULL, NULL, NULL, '05_saudi_electricity_co._vendor_no-00501227.jpg', 1, NULL, '2018-04-04 03:54:27', '2018-04-04 03:54:27'),
(380, 0, '06_AL SUWAIKET CO.', NULL, NULL, NULL, '06_al_suwaiket_co..jpg', 1, NULL, '2018-04-04 03:54:27', '2018-04-04 03:54:27'),
(381, 0, '07_ALLIED ARABIAN CO.', NULL, NULL, NULL, '07_allied_arabian_co..jpg', 1, NULL, '2018-04-04 03:54:28', '2018-04-04 03:54:28'),
(382, 0, '08_SUNGCHANG', NULL, NULL, NULL, '08_sungchang.jpg', 1, NULL, '2018-04-04 03:54:28', '2018-04-04 03:54:28'),
(383, 0, '09_SABIC', NULL, NULL, NULL, '09_sabic.jpg', 1, NULL, '2018-04-04 03:54:28', '2018-04-04 03:54:28'),
(384, 0, '10_SAMSUNG ENGINEERING', NULL, NULL, NULL, '10_samsung_engineering.jpg', 1, NULL, '2018-04-04 03:54:29', '2018-04-04 03:54:29'),
(385, 0, '11_FRAIH AL HARBI CO.', NULL, NULL, NULL, '11_fraih_al_harbi_co..jpg', 1, NULL, '2018-04-04 03:54:29', '2018-04-04 03:54:29'),
(386, 0, '12_AL ROBAYA HOLDING CO.', NULL, NULL, NULL, '12_al_robaya_holding_co..jpg', 1, NULL, '2018-04-04 03:54:30', '2018-04-04 03:54:30'),
(387, 0, '13_SSEM CO.', NULL, NULL, NULL, '13_ssem_co..jpg', 1, NULL, '2018-04-04 03:54:30', '2018-04-04 03:54:30'),
(388, 0, '14_SK ENGINEERING CONSTRUCTION', NULL, NULL, NULL, '14_sk_engineering_construction.jpg', 1, NULL, '2018-04-04 03:54:31', '2018-04-04 03:54:31'),
(389, 0, '15_AL JOL CO.', NULL, NULL, NULL, '15_al_jol_co..jpg', 1, NULL, '2018-04-04 03:54:31', '2018-04-04 03:54:31'),
(390, 0, '16_GUSAN CO.', NULL, NULL, NULL, '16_gusan_co..jpg', 1, NULL, '2018-04-04 03:54:32', '2018-04-04 03:54:32'),
(391, 0, '17_AL ESSA CO', NULL, NULL, NULL, '17_al_essa_co.jpg', 1, NULL, '2018-04-04 03:54:32', '2018-04-04 03:54:32'),
(392, 0, '18_ANABEEB CO.', NULL, NULL, NULL, '18_anabeeb_co..jpg', 1, NULL, '2018-04-04 03:54:33', '2018-04-04 03:54:33'),
(393, 0, '19_SAIPEM CO. VENDOR NO.153572', NULL, NULL, NULL, '19_saipem_co._vendor_no.153572.jpg', 1, NULL, '2018-04-04 03:54:33', '2018-04-04 03:54:33'),
(394, 0, '20_DAESUN CO.', NULL, NULL, NULL, '20_daesun_co..jpg', 1, NULL, '2018-04-04 03:54:33', '2018-04-04 03:54:33'),
(395, 0, 'GUSAN-CO', NULL, NULL, NULL, 'gusan-co.png', 1, NULL, '2018-04-04 11:50:10', '2018-04-04 11:50:10'),
(396, 0, 'PAN-GULF-INDUSTRIAL-SYSTEM-CO.', NULL, NULL, NULL, 'pan-gulf-industrial-system-co..png', 1, NULL, '2018-04-04 11:50:10', '2018-04-04 11:50:10'),
(397, 0, 'samsung_logo_PNG14', NULL, NULL, NULL, 'samsung_logo_png14.png', 1, NULL, '2018-04-04 11:50:14', '2018-04-04 11:50:14'),
(398, 0, 'Sapem', NULL, NULL, NULL, 'sapem.png', 1, NULL, '2018-04-04 11:50:14', '2018-04-04 11:50:14'),
(399, 0, 'SUNGCHANG', NULL, NULL, NULL, 'sungchang.png', 1, NULL, '2018-04-04 11:50:18', '2018-04-04 11:50:18'),
(400, 0, 'Branding', NULL, NULL, NULL, 'branding_1.png', 1, NULL, '2018-04-04 12:10:30', '2018-04-04 12:10:30'),
(401, 0, 'Content-seeding-&--distribution', NULL, NULL, NULL, 'content-seeding-a--distribution.png', 1, NULL, '2018-04-04 12:10:31', '2018-04-04 12:10:31'),
(402, 0, 'Digital-Advertising', NULL, NULL, NULL, 'digital-advertising.png', 1, NULL, '2018-04-04 12:10:36', '2018-04-04 12:10:36'),
(403, 0, 'Creative-Services', NULL, NULL, NULL, 'creative-services.png', 1, NULL, '2018-04-04 12:10:36', '2018-04-04 12:10:36'),
(404, 0, 'Media-planning-&-Buying', NULL, NULL, NULL, 'media-planning-a-buying.png', 1, NULL, '2018-04-04 12:10:41', '2018-04-04 12:10:41'),
(405, 0, 'Search-Engine-Marketing', NULL, NULL, NULL, 'search-engine-marketing.png', 1, NULL, '2018-04-04 12:10:44', '2018-04-04 12:10:44'),
(406, 0, 'Social-Media-strategists', NULL, NULL, NULL, 'social-media-strategists.png', 1, NULL, '2018-04-04 12:10:47', '2018-04-04 12:10:47'),
(407, 0, 'contact-us', NULL, NULL, NULL, 'contact-us.png', 7, NULL, '2018-04-05 10:49:30', '2018-04-05 10:49:30'),
(408, 0, 'contact-us-baner', NULL, NULL, NULL, 'contact-us-baner.png', 7, NULL, '2018-04-05 11:07:12', '2018-04-05 11:07:12'),
(409, 0, 'blog-betails', NULL, NULL, NULL, 'blog-betails.png', 7, NULL, '2018-04-05 11:29:39', '2018-04-05 11:29:39'),
(410, 0, 'local_seo_package', NULL, NULL, NULL, 'local_seo_package_1.jpg', 1, NULL, '2018-10-30 09:35:50', '2018-10-30 09:35:50'),
(411, 0, 'fav-nextpagetl', NULL, NULL, NULL, 'fav-nextpagetl.png', 1, NULL, '2018-10-30 11:17:13', '2018-10-30 11:17:13'),
(412, 0, 'logo-secondary-dark', NULL, NULL, NULL, 'logo-secondary-dark.png', 1, NULL, '2018-10-30 11:18:38', '2018-10-30 11:18:38'),
(413, 0, '1', NULL, NULL, NULL, '1.jpg', 1, NULL, '2018-10-30 11:20:18', '2018-10-30 11:20:18'),
(414, 0, '2', NULL, NULL, NULL, '2_3.jpg', 1, NULL, '2018-10-30 11:20:33', '2018-10-30 11:20:33'),
(415, 0, '12', NULL, NULL, NULL, '12_8.jpg', 1, NULL, '2018-10-30 11:20:47', '2018-10-30 11:20:47'),
(416, 0, '3', NULL, NULL, NULL, '3_3.jpg', 1, NULL, '2018-10-30 11:21:01', '2018-10-30 11:21:01'),
(417, 0, '14', NULL, NULL, NULL, '14_1.jpg', 1, NULL, '2018-10-30 11:21:15', '2018-10-30 11:21:15'),
(418, 0, 'logo-color (104-50)', NULL, NULL, NULL, 'logo-color__28104-50_29.png', 1, NULL, '2018-10-31 03:39:48', '2018-10-31 03:39:48'),
(419, 0, 'fav-nextpagetl', NULL, NULL, NULL, 'fav-nextpagetl_1.png', 1, NULL, '2018-10-31 03:41:11', '2018-10-31 03:41:11'),
(420, 0, '17', NULL, NULL, NULL, '17_1.jpg', 1, NULL, '2018-10-31 03:55:25', '2018-10-31 03:55:25'),
(421, 0, '18', NULL, NULL, NULL, '18_1.jpg', 1, NULL, '2018-10-31 03:55:28', '2018-10-31 03:55:28'),
(422, 0, '6', NULL, NULL, NULL, '6_2.jpg', 1, NULL, '2018-10-31 03:55:31', '2018-10-31 03:55:31'),
(423, 0, '17', NULL, NULL, NULL, '17_2.jpg', 1, NULL, '2018-10-31 04:00:22', '2018-10-31 04:00:22'),
(424, 0, '6', NULL, NULL, NULL, '6_3.jpg', 1, NULL, '2018-10-31 04:00:25', '2018-10-31 04:00:25'),
(425, 0, '18', NULL, NULL, NULL, '18_2.jpg', 1, NULL, '2018-10-31 04:00:27', '2018-10-31 04:00:27'),
(426, 0, '17', NULL, NULL, NULL, '17_3.jpg', 1, NULL, '2018-10-31 04:01:20', '2018-10-31 04:01:20'),
(427, 0, '15', NULL, NULL, NULL, '15_1.jpg', 1, NULL, '2018-10-31 04:01:23', '2018-10-31 04:01:23'),
(428, 0, '18', NULL, NULL, NULL, '18_3.jpg', 1, NULL, '2018-10-31 04:01:26', '2018-10-31 04:01:26'),
(429, 0, '17', NULL, NULL, NULL, '17_4.jpg', 1, NULL, '2018-10-31 04:03:22', '2018-10-31 04:03:22'),
(430, 0, '17', NULL, NULL, NULL, '17_5.jpg', 1, NULL, '2018-10-31 04:04:46', '2018-10-31 04:04:46'),
(431, 0, '18', NULL, NULL, NULL, '18_4.jpg', 1, NULL, '2018-10-31 04:06:47', '2018-10-31 04:06:47'),
(432, 0, '15', NULL, NULL, NULL, '15_2.jpg', 1, NULL, '2018-10-31 04:06:54', '2018-10-31 04:06:54'),
(433, 0, '6', NULL, NULL, NULL, '6_4.jpg', 1, NULL, '2018-10-31 04:07:26', '2018-10-31 04:07:26'),
(434, 0, '1', NULL, NULL, NULL, '1_3.jpg', 1, NULL, '2018-10-31 04:07:33', '2018-10-31 04:07:33'),
(435, 0, 'about bg', NULL, NULL, NULL, 'about_bg.jpg', 1, NULL, '2018-10-31 06:08:34', '2018-10-31 06:08:34'),
(436, 0, 'icon-03-01', NULL, NULL, NULL, 'icon-03-01_1.png', 1, NULL, '2018-10-31 06:29:50', '2018-10-31 06:29:50'),
(437, 0, 'icon-03-02', NULL, NULL, NULL, 'icon-03-02_1.png', 1, NULL, '2018-10-31 06:29:55', '2018-10-31 06:29:55'),
(438, 0, 'icon-03-03', NULL, NULL, NULL, 'icon-03-03_1.png', 1, NULL, '2018-10-31 06:30:00', '2018-10-31 06:30:00'),
(439, 0, 'large-thumb-2', NULL, NULL, NULL, 'large-thumb-2.jpg', 1, NULL, '2018-10-31 07:02:08', '2018-10-31 07:02:08'),
(440, 0, 'large-thumb-7', NULL, NULL, NULL, 'large-thumb-7.jpg', 1, NULL, '2018-10-31 07:02:12', '2018-10-31 07:02:12'),
(441, 0, 'large-thumb-8', NULL, NULL, NULL, 'large-thumb-8.jpg', 1, NULL, '2018-10-31 07:02:17', '2018-10-31 07:02:17'),
(442, 0, 'large-thumb-9', NULL, NULL, NULL, 'large-thumb-9.jpg', 1, NULL, '2018-10-31 07:02:22', '2018-10-31 07:02:22'),
(443, 0, 'large-thumb-10', NULL, NULL, NULL, 'large-thumb-10.jpg', 1, NULL, '2018-10-31 07:02:29', '2018-10-31 07:02:29'),
(444, 0, 'single-portfolio-3 (1)', NULL, NULL, NULL, 'single-portfolio-3__281_29.jpg', 1, NULL, '2018-10-31 07:03:16', '2018-10-31 07:03:16'),
(445, 0, 'team-image-5', NULL, NULL, NULL, 'team-image-5.jpg', 1, NULL, '2018-10-31 07:07:43', '2018-10-31 07:07:43'),
(446, 0, 'team-image-6', NULL, NULL, NULL, 'team-image-6.jpg', 1, NULL, '2018-10-31 07:07:47', '2018-10-31 07:07:47'),
(447, 0, 'team-image-7', NULL, NULL, NULL, 'team-image-7.jpg', 1, NULL, '2018-10-31 07:07:51', '2018-10-31 07:07:51'),
(448, 0, 'team-image-8', NULL, NULL, NULL, 'team-image-8.jpg', 1, NULL, '2018-10-31 07:07:55', '2018-10-31 07:07:55'),
(449, 0, 'thumb-1', NULL, NULL, NULL, 'thumb-1.png', 1, NULL, '2018-10-31 07:17:25', '2018-10-31 07:17:25'),
(450, 0, 'thumb-2', NULL, NULL, NULL, 'thumb-2.png', 1, NULL, '2018-10-31 07:17:32', '2018-10-31 07:17:32'),
(451, 0, 'thumb-3', NULL, NULL, NULL, 'thumb-3.png', 1, NULL, '2018-10-31 07:17:39', '2018-10-31 07:17:39'),
(452, 0, 'thumb-4', NULL, NULL, NULL, 'thumb-4.png', 1, NULL, '2018-10-31 07:18:09', '2018-10-31 07:18:09'),
(453, 0, 'brand-logo-1', NULL, NULL, NULL, 'brand-logo-1.png', 1, NULL, '2018-10-31 07:24:43', '2018-10-31 07:24:43'),
(454, 0, 'brand-logo-2', NULL, NULL, NULL, 'brand-logo-2.png', 1, NULL, '2018-10-31 07:24:50', '2018-10-31 07:24:50'),
(455, 0, 'brand-logo-3', NULL, NULL, NULL, 'brand-logo-3.png', 1, NULL, '2018-10-31 07:24:57', '2018-10-31 07:24:57'),
(456, 0, 'brand-logo-4', NULL, NULL, NULL, 'brand-logo-4.png', 1, NULL, '2018-10-31 07:25:04', '2018-10-31 07:25:04'),
(457, 0, 'brand-logo-5', NULL, NULL, NULL, 'brand-logo-5.png', 1, NULL, '2018-10-31 07:25:12', '2018-10-31 07:25:12'),
(458, 0, 'brand-logo-6', NULL, NULL, NULL, 'brand-logo-6.png', 1, NULL, '2018-10-31 07:25:19', '2018-10-31 07:25:19'),
(459, 0, 'our-story', NULL, NULL, NULL, 'our-story.jpg', 1, NULL, '2018-10-31 08:21:40', '2018-10-31 08:21:40'),
(460, 0, 'our-team', NULL, NULL, NULL, 'our-team.jpg', 1, NULL, '2018-10-31 08:22:40', '2018-10-31 08:22:40'),
(461, 0, 'contact-us-baner', NULL, NULL, NULL, 'contact-us-baner_1.png', 1, NULL, '2018-10-31 08:22:54', '2018-10-31 08:22:54'),
(462, 0, 'blog-details-banner', NULL, NULL, NULL, 'blog-details-banner.jpg', 1, NULL, '2018-10-31 08:23:47', '2018-10-31 08:23:47'),
(463, 0, 'blog-details-banner_1', NULL, NULL, NULL, 'blog-details-banner_1.jpg', 1, NULL, '2018-10-31 08:24:09', '2018-10-31 08:24:09'),
(464, 0, 'blog-details-1', NULL, NULL, NULL, 'blog-details-1.jpg', 1, NULL, '2018-10-31 08:28:26', '2018-10-31 08:28:26'),
(465, 0, 'blog-thumbnail-1', NULL, NULL, NULL, 'blog-thumbnail-1.jpg', 1, NULL, '2018-10-31 08:28:32', '2018-10-31 08:28:32'),
(466, 0, 'blog-thumbnail-4', NULL, NULL, NULL, 'blog-thumbnail-4.jpg', 1, NULL, '2018-10-31 08:28:38', '2018-10-31 08:28:38'),
(467, 0, 'blog-thumbnail-6', NULL, NULL, NULL, 'blog-thumbnail-6.jpg', 1, NULL, '2018-10-31 08:28:43', '2018-10-31 08:28:43'),
(468, 0, 'blog-thumbnail-3', NULL, NULL, NULL, 'blog-thumbnail-3.jpg', 1, NULL, '2018-10-31 08:31:45', '2018-10-31 08:31:45'),
(469, 0, 'blog-thumbnail-5', NULL, NULL, NULL, 'blog-thumbnail-5.jpg', 1, NULL, '2018-10-31 08:31:51', '2018-10-31 08:31:51'),
(470, 0, 'Logo', NULL, NULL, NULL, 'logo.png', 1, NULL, '2018-10-31 09:00:46', '2018-10-31 09:00:46'),
(471, 0, '7161adbcac49abc7f2a6fa43971897fc056e3ef141e683fb246bc6083a7d8d3d8a14fecc4a0524dcacfc99969da380c654f0b86711104e7017cc2e4f8d2d773a', NULL, NULL, NULL, '7161adbcac49abc7f2a6fa43971897fc056e3ef141e683fb246bc6083a7d8d3d8a14fecc4a0524dcacfc99969da380c654f0b86711104e7017cc2e4f8d2d773a.png', 1, NULL, '2018-10-31 09:10:27', '2018-10-31 09:10:27'),
(472, 0, '7161adbcac49abc7f2a6fa43971897fc056e3ef141e683fb246bc6083a7d8d3d8a14fecc4a0524dcacfc99969da380c654f0b86711104e7017cc2e4f8d2d773a', NULL, NULL, NULL, '7161adbcac49abc7f2a6fa43971897fc056e3ef141e683fb246bc6083a7d8d3d8a14fecc4a0524dcacfc99969da380c654f0b86711104e7017cc2e4f8d2d773a_1.png', 1, NULL, '2018-10-31 09:12:49', '2018-10-31 09:12:49'),
(473, 0, 'digital-advertising', NULL, NULL, NULL, 'digital-advertising.jpg', 1, NULL, '2018-10-31 09:55:41', '2018-10-31 09:55:41'),
(474, 0, 'case-detals-banner', NULL, NULL, NULL, 'case-detals-banner_1.jpg', 1, NULL, '2018-10-31 10:47:51', '2018-10-31 10:47:51'),
(475, 0, 'privacy-policy-banner', NULL, NULL, NULL, 'privacy-policy-banner.png', 1, NULL, '2018-10-31 11:13:24', '2018-10-31 11:13:24'),
(476, 0, 'terms-a-conditions-banner', NULL, NULL, NULL, 'terms-a-conditions-banner.png', 1, NULL, '2018-10-31 11:16:03', '2018-10-31 11:16:03'),
(477, 0, 'faq-banner', NULL, NULL, NULL, 'faq-banner_1.png', 1, NULL, '2018-10-31 11:20:21', '2018-10-31 11:20:21'),
(478, 0, 'nextpage', NULL, NULL, NULL, 'nextpage.jpg', 1, NULL, '2018-11-05 18:48:45', '2018-11-05 18:48:45'),
(479, 0, 'nextpage (2)', NULL, NULL, NULL, 'nextpage__282_29.jpg', 1, NULL, '2018-11-05 18:56:15', '2018-11-05 18:56:15'),
(480, 0, 'ecommerce-2140603', NULL, NULL, NULL, 'ecommerce-2140603.jpg', 1, NULL, '2018-11-05 19:07:27', '2018-11-05 19:07:27'),
(481, 0, 'ecommerce-2140603', NULL, NULL, NULL, 'ecommerce-2140603_1.jpg', 1, NULL, '2018-11-05 19:07:59', '2018-11-05 19:07:59'),
(482, 0, 'Screenshot_1', NULL, NULL, NULL, 'screenshot_1.png', 1, NULL, '2018-11-05 19:39:18', '2018-11-05 19:39:18'),
(483, 0, 'Screenshot_4', NULL, NULL, NULL, 'screenshot_4.png', 1, NULL, '2018-11-05 19:48:02', '2018-11-05 19:48:02'),
(484, 0, 'IMG_0838', NULL, NULL, NULL, 'img_0838.jpg', 1, NULL, '2018-11-05 19:59:07', '2018-11-05 19:59:07'),
(485, 0, '7935', NULL, NULL, NULL, '7935.jpg', 1, NULL, '2018-11-05 20:03:05', '2018-11-05 20:03:05'),
(486, 0, '13658931_1257003354323832_3254717981786013916_n', NULL, NULL, NULL, '13658931_1257003354323832_3254717981786013916_n.jpg', 1, NULL, '2018-11-05 20:06:24', '2018-11-05 20:06:24'),
(487, 0, '26855908_1505927176172627_1499270971_n', NULL, NULL, NULL, '26855908_1505927176172627_1499270971_n.jpg', 1, NULL, '2018-11-05 20:08:03', '2018-11-05 20:08:03');
INSERT INTO `media` (`id`, `is_private`, `title`, `caption`, `alt`, `description`, `slug`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(488, 0, 'image1', NULL, NULL, NULL, 'image1.jpg', 1, NULL, '2018-11-05 20:11:56', '2018-11-05 20:11:56'),
(489, 0, NULL, NULL, NULL, NULL, '.jpg', 1, NULL, '2018-11-05 20:16:18', '2018-11-05 20:16:18'),
(490, 0, NULL, NULL, NULL, NULL, '.png', 1, NULL, '2018-11-05 20:18:09', '2018-11-05 20:18:09'),
(491, 0, 'ECOWINGS', NULL, NULL, NULL, 'ecowings.png', 1, NULL, '2018-11-05 20:19:19', '2018-11-05 20:19:19'),
(492, 0, 'finallf', NULL, NULL, NULL, 'finallf.png', 1, NULL, '2018-11-05 20:21:45', '2018-11-05 20:21:45'),
(493, 0, 'The Style Women-Logo-done', NULL, NULL, NULL, 'the_style_women-logo-done.png', 1, NULL, '2018-11-05 20:27:25', '2018-11-05 20:27:25'),
(494, 0, 'online', NULL, NULL, NULL, 'online.png', 1, NULL, '2018-11-05 20:39:26', '2018-11-05 20:39:26'),
(495, 0, 'parents', NULL, NULL, NULL, 'parents.png', 1, NULL, '2018-11-05 23:29:33', '2018-11-05 23:29:33'),
(496, 0, 'Untitled-14', NULL, NULL, NULL, 'untitled-14.jpg', 1, NULL, '2018-12-09 19:21:23', '2018-12-09 19:21:23'),
(497, 0, 'Untitled-13', NULL, NULL, NULL, 'untitled-13.jpg', 1, NULL, '2018-12-09 19:25:52', '2018-12-09 19:25:52'),
(498, 0, 'Untitled-7', NULL, NULL, NULL, 'untitled-7.jpg', 1, NULL, '2018-12-09 19:29:26', '2018-12-09 19:29:26'),
(499, 0, 'Untitled-9', NULL, NULL, NULL, 'untitled-9.jpg', 1, NULL, '2018-12-09 19:31:07', '2018-12-09 19:31:07'),
(500, 0, 'Untitled-3', NULL, NULL, NULL, 'untitled-3.jpg', 1, NULL, '2018-12-09 19:33:16', '2018-12-09 19:33:16'),
(501, 0, 'Untitled-6', NULL, NULL, NULL, 'untitled-6.jpg', 1, NULL, '2018-12-09 19:34:08', '2018-12-09 19:34:08'),
(502, 0, 'Untitled-5', NULL, NULL, NULL, 'untitled-5.jpg', 1, NULL, '2018-12-09 19:34:31', '2018-12-09 19:34:31'),
(503, 0, 'Untitled-8', NULL, NULL, NULL, 'untitled-8.jpg', 1, NULL, '2018-12-09 19:36:02', '2018-12-09 19:36:02'),
(504, 0, 'Untitled-10', NULL, NULL, NULL, 'untitled-10.jpg', 1, NULL, '2018-12-09 19:37:18', '2018-12-09 19:37:18'),
(505, 0, 'Untitled-1', NULL, NULL, NULL, 'untitled-1.jpg', 1, NULL, '2018-12-09 19:37:33', '2018-12-09 19:37:33'),
(506, 0, 'Untitled-4', NULL, NULL, NULL, 'untitled-4.jpg', 1, NULL, '2018-12-09 19:38:07', '2018-12-09 19:38:07'),
(507, 0, 'Untitled-12', NULL, NULL, NULL, 'untitled-12.jpg', 1, NULL, '2018-12-09 19:38:31', '2018-12-09 19:38:31'),
(508, 0, 'Untitled-2', NULL, NULL, NULL, 'untitled-2.jpg', 1, NULL, '2018-12-09 19:39:41', '2018-12-09 19:39:41'),
(509, 0, 'ceo', NULL, NULL, NULL, 'ceo.jpg', 1, NULL, '2018-12-09 19:51:01', '2018-12-09 19:51:01'),
(510, 0, 'Top 5 Hacking Software- Best hacking Software.', NULL, NULL, NULL, 'top_5_hacking_software-_best_hacking_software..mp4', 1, NULL, '2018-12-09 23:39:34', '2018-12-09 23:39:34'),
(511, 0, '1', NULL, NULL, NULL, '1.png', 1, NULL, '2018-12-09 23:52:30', '2018-12-09 23:52:30'),
(512, 0, '2', NULL, NULL, NULL, '2.png', 1, NULL, '2018-12-09 23:53:16', '2018-12-09 23:53:16'),
(513, 0, '4', NULL, NULL, NULL, '4.png', 1, NULL, '2018-12-10 00:22:21', '2018-12-10 00:22:21'),
(514, 0, '3', NULL, NULL, NULL, '3.png', 1, NULL, '2018-12-10 00:22:22', '2018-12-10 00:22:22'),
(515, 0, 'eco colour chem', NULL, NULL, NULL, 'eco_colour_chem.png', 1, NULL, '2018-12-10 00:22:23', '2018-12-10 00:22:23'),
(516, 0, 'ECOWINGS', NULL, NULL, NULL, 'ecowings_1.png', 1, NULL, '2018-12-10 00:22:25', '2018-12-10 00:22:25'),
(517, 0, 'logo (144-72)', NULL, NULL, NULL, 'logo__28144-72_29.png', 1, NULL, '2018-12-10 00:22:27', '2018-12-10 00:22:27'),
(518, 0, '5', NULL, NULL, NULL, '5.png', 1, NULL, '2018-12-10 00:22:27', '2018-12-10 00:22:27'),
(519, 0, 'Untitled-5', NULL, NULL, NULL, 'untitled-5.png', 1, NULL, '2018-12-10 00:22:33', '2018-12-10 00:22:33'),
(520, 0, 'Untitled-15', NULL, NULL, NULL, 'untitled-15.jpg', 1, NULL, '2018-12-10 00:24:41', '2018-12-10 00:24:41'),
(521, 0, 'e', NULL, NULL, NULL, 'e.jpg', 1, NULL, '2018-12-10 00:25:24', '2018-12-10 00:25:24'),
(522, 0, 'IDEA-TEC_1', NULL, NULL, NULL, 'idea-tec_1.jpg', 1, NULL, '2018-12-13 07:07:02', '2018-12-13 07:07:02'),
(523, 0, 'single-portfolio-1', NULL, NULL, NULL, 'single-portfolio-1.jpg', 1, NULL, '2018-12-13 07:59:21', '2018-12-13 07:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `media_permissions`
--

CREATE TABLE `media_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_permissions`
--

INSERT INTO `media_permissions` (`id`, `media_id`, `user_id`) VALUES
(1, 149, 1),
(2, 143, 1),
(3, 100, 1),
(4, 145, 1),
(5, 144, 1),
(6, 115, 1),
(7, 156, 1),
(8, 158, 1),
(9, 154, 1),
(10, 152, 1),
(11, 151, 1),
(12, 150, 1),
(13, 119, 1),
(14, 117, 1),
(15, 118, 1),
(16, 155, 1),
(17, 157, 1),
(18, 224, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2017_08_07_034348_create_settings_table', 1),
(13, '2017_08_07_035559_create_users_metas_table', 1),
(14, '2017_08_07_042628_create_roles_table', 1),
(15, '2017_08_07_092248_create_media_table', 1),
(16, '2017_08_08_093255_create_visitors_table', 1),
(17, '2017_08_10_091903_create_pages_table', 1),
(18, '2017_08_10_091915_create_sliders_table', 1),
(19, '2017_10_03_070336_create_categories_table', 2),
(20, '2017_10_03_070345_create_categoryables_table', 2),
(21, '2017_10_03_070354_create_tags_table', 2),
(22, '2017_10_03_070407_create_taggables_table', 2),
(23, '2017_10_03_071431_create_comments_table', 2),
(24, '2017_10_03_071448_create_blogs_table', 2),
(25, '2017_10_03_071459_create_cases_table', 2),
(26, '2017_10_03_071514_create_services_table', 2),
(27, '2017_10_30_054713_create_admins_table', 3),
(28, '2017_10_30_055642_create_admins_metas_table', 3),
(29, '2017_10_30_104950_add_features_to_services_table', 4),
(30, '2017_10_30_105110_add_extra_to_services_table', 4),
(31, '2017_10_31_113316_add_short_description_to_services_table', 5),
(32, '2017_11_01_041902_add_subtitle_to_services_table', 6),
(35, '2017_11_05_090347_create_packages_table', 7),
(36, '2017_11_05_091914_create_package_details_table', 7),
(61, '2017_11_09_064245_create_orders_table', 8),
(62, '2017_11_09_064315_create_payments_table', 8),
(63, '2017_11_09_064335_create_order_details_table', 8),
(64, '2017_11_09_083522_create_payment_methods_table', 8),
(65, '2017_11_11_040005_create_coupons_table', 8),
(66, '2017_11_11_040822_add_auth_id_to_users_table', 8),
(67, '2017_11_19_063429_create_taxes_table', 9),
(68, '2017_12_09_032351_create_media_permissions_table', 10),
(69, '2017_12_10_035008_create_subscribers_table', 10),
(70, '2018_02_27_080952_add_seo_title_to_packages_table', 11),
(71, '2018_02_28_042315_add_layout_to_services_table', 12),
(72, '2018_03_13_041023_add_style_to_sliders_table', 13),
(73, '2018_03_13_075043_add_mover_img_to_packages_table', 14),
(74, '2018_03_14_051359_create_likes_table', 15),
(75, '2018_03_14_052316_add_likes_to_blogs_table', 15),
(76, '2018_03_19_055541_create_tickets_table', 16),
(78, '2018_03_19_080800_create_tickets_details_table', 17),
(80, '2018_03_28_070117_add_three_fields_to_cases_table', 18),
(81, '2018_03_29_034328_add_extra_to_packages_table', 19),
(82, '2018_10_04_104410_create_products_table', 20),
(83, '2018_10_08_093707_create_portfolios_table', 21),
(84, '2018_10_11_044303_create_services_table', 22),
(85, '2018_10_13_042316_create_sliders_table', 23),
(86, '2018_10_18_074410_create_contacts_table', 24),
(87, '2018_10_20_150503_create_subscribers_table', 25),
(88, '2018_10_30_101657_create_likes_table', 26),
(89, '2018_12_11_130908_create_careers_table', 26),
(90, '2018_12_11_160529_create_careerapplies_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `package_type` tinyint(3) UNSIGNED NOT NULL COMMENT '1=Pricing Plan, 2=Content Writing, 3=Advertisement',
  `package_detail_type` tinyint(3) UNSIGNED DEFAULT NULL COMMENT '1=Pricing Plan, 2=Recommended, 3=Professional',
  `rate` float(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `qty` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `total` double(10,2) NOT NULL,
  `discount` double(5,2) NOT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT '0',
  `tax` double(6,2) NOT NULL DEFAULT '0.00',
  `net_total` double(10,2) NOT NULL,
  `paid` float(10,2) DEFAULT '0.00',
  `message` text COLLATE utf8mb4_unicode_ci,
  `attachments` text COLLATE utf8mb4_unicode_ci,
  `completed_files` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Completed, 2=Pending, 3=Cancelled',
  `order_status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1=Completed, 2=Processing, 3=Pending, 4=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `contact_email`, `package_id`, `package_type`, `package_detail_type`, `rate`, `qty`, `total`, `discount`, `coupon_id`, `tax`, `net_total`, `paid`, `message`, `attachments`, `completed_files`, `created_by`, `modified_by`, `payment_status`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'engr.mrksohag@gmail.com', 1, 2, NULL, 0.00, 1, 799.00, 0.00, 0, 0.00, 799.00, 799.00, '', '', NULL, 1, 1, 1, 3, '2018-01-03 03:44:02', '2018-01-03 03:45:11'),
(2, 1, 'engr.mrksohag@gmail.com', 9, 4, NULL, 8.00, 1, 8.00, 0.00, 0, 0.00, 8.00, 8.00, '', '', NULL, 1, 1, 1, 3, '2018-01-03 22:05:58', '2018-01-03 22:06:31'),
(3, 1, 'engr.mrksohag@gmail.com', 9, 4, NULL, 4.00, 1, 4.00, 0.00, 0, 0.00, 4.00, 4.00, '', '', NULL, 1, 1, 1, 3, '2018-01-23 23:37:51', '2018-01-23 23:40:02'),
(4, 1, 'engr.mrksohag@gmail.com', 5, 1, 1, 3199.00, 1, 3199.00, 0.00, 0, 0.00, 3199.00, 3199.00, '', '', NULL, 1, 1, 1, 1, '2018-02-05 09:20:58', '2018-02-08 07:51:55'),
(5, 1, 'engr.mrksohag@gmail.com', 4, 5, NULL, 1499.00, 1, 1499.00, 0.00, 0, 0.00, 1499.00, 1499.00, '', '', 'chart_1.png', 1, 1, 1, 1, '2018-02-05 09:22:28', '2018-02-05 09:30:21'),
(6, 1, 'engr.mrksohag@gmail.com', 9, 4, NULL, 4.00, 1, 4.00, 0.00, 0, 0.00, 4.00, 0.00, '', '', NULL, 1, 1, 2, 3, '2018-02-05 21:49:50', '2018-02-05 21:49:50'),
(7, 1, 'engr.mrksohag@gmail.com', 4, 5, NULL, 1499.00, 1, 1499.00, 0.00, 0, 0.00, 1499.00, 0.00, '', '', NULL, 1, 1, 2, 3, '2018-02-05 21:52:29', '2018-02-05 21:52:29'),
(8, 1, 'engr.mrksohag@gmail.com', 4, 5, NULL, 999.00, 1, 999.00, 0.00, 0, 0.00, 999.00, 0.00, '', '', NULL, 1, 1, 2, 3, '2018-02-05 22:03:58', '2018-02-05 22:03:58'),
(9, 1, 'engr.mrksohag@gmail.com', 4, 5, NULL, 1499.00, 1, 1499.00, 0.00, 0, 0.00, 1499.00, 0.00, '', '', NULL, 1, 1, 2, 3, '2018-02-05 22:45:52', '2018-02-05 22:45:52'),
(10, 1, 'engr.mrksohag@gmail.com', 4, 5, NULL, 1499.00, 1, 1499.00, 0.00, 0, 0.00, 1499.00, 1499.00, '', '', NULL, 1, 1, 1, 3, '2018-02-12 08:14:47', '2018-02-12 08:15:36'),
(11, 2, 'engr.mrksohag@gmail.com', 5, 1, 1, 2599.00, 1, 2599.00, 0.00, 0, 0.00, 2599.00, 2599.00, '', '', NULL, 2, 2, 1, 3, '2018-03-19 02:40:12', '2018-03-19 02:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `package_detail_id` int(10) UNSIGNED NOT NULL,
  `words` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `qty` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rate` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `package_detail_id`, `words`, `qty`, `rate`) VALUES
(1, 1, 3, 0, 1, 799.00),
(2, 2, 32, 100, 1, 2.00),
(3, 2, 33, 100, 1, 2.00),
(4, 2, 34, 100, 1, 2.00),
(5, 2, 35, 100, 1, 2.00),
(6, 3, 32, 100, 1, 2.00),
(7, 3, 33, 100, 1, 2.00),
(8, 4, 15, 0, 1, 3199.00),
(9, 5, 12, 0, 1, 1499.00),
(10, 6, 32, 100, 1, 2.00),
(11, 6, 33, 100, 1, 2.00),
(12, 7, 12, 0, 1, 1499.00),
(13, 8, 11, 0, 1, 999.00),
(14, 9, 12, 0, 1, 1499.00),
(15, 10, 12, 0, 1, 1499.00),
(16, 11, 14, 0, 1, 2599.00);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Pricing Plan, 2=Content Writing, 3=Advertisement',
  `title` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `pricing_detail` longtext COLLATE utf8mb4_unicode_ci,
  `requirements` longtext COLLATE utf8mb4_unicode_ci,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sale_qty` int(11) DEFAULT '0',
  `sale_amount` float(25,2) DEFAULT '0.00',
  `mover_img` text COLLATE utf8mb4_unicode_ci,
  `extra` longtext COLLATE utf8mb4_unicode_ci,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `type`, `title`, `slug`, `subtitle`, `image`, `description`, `pricing_detail`, `requirements`, `views`, `sale_qty`, `sale_amount`, `mover_img`, `extra`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(10, 6, 'Hosting Price', 'hosting-price', 'Choose your suitable web hosting packages or call us for help.', 'local_seo_package_1.jpg', '<p>Choose your suitable web hosting packages or call us for help.Choose your suitable web hosting packages or call us for help.Choose your suitable web</p>\r\n\r\n<p>h<strong>osting packages or call us for help.Choose your suitable web hosting packages or call us for help.Choose your suitable web hosting packages or call us for help.Choose your suitable web hosting packages or call us for help.Choose your suitable web hosting packages or call us for help.Choose your suitable web hosting packages or call us for help.Choose your suitable web hosting packages or call us for help.</strong></p>', 'a:4:{s:22:\"basic_pricing_subtitle\";s:7:\"/Yearly\";s:23:\"silver_pricing_subtitle\";s:7:\"/Yearly\";s:21:\"gold_pricing_subtitle\";s:7:\"/Yearly\";s:24:\"premium_pricing_subtitle\";s:7:\"/Yearly\";}', NULL, 0, 0, 0.00, 'local_seo_package_1.jpg', 'a:4:{s:18:\"pricing_info_title\";s:48:\"Let\'s Ready Your Brands Visualization For Future\";s:10:\"step_title\";s:18:\"The 60-Second Show\";s:13:\"step_subtitle\";s:69:\"The Promise To Deliver A Vigorous Visual Response To People\'s Demands\";s:10:\"step_image\";s:23:\"local_seo_package_1.jpg\";}', 'Hosting', 'Hosting', 'Hosting', 1, NULL, 1, '2018-10-30 10:26:47', '2018-10-30 10:49:59'),
(11, 5, 'Website Design & Development', 'website-design-development', NULL, 'digital-advertising.jpg', '<h2 style=\"text-align:center\">Complete Web Solutions for Your Branding</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Dynamic Website Management Panel</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customized Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Responsive Website Design </a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">High Security Standard</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Search engine friendly</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Website Hosting</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Quality Web Content</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Web application development</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Simple and Professional Web Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Clear, User-friendly Navigation</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Webpage Speed</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n    <div class=\"ab-page-title text-center\">\r\n        <h1><span>Web Development Features</span></h1>\r\n    </div> \r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Responsive Web Design</h4>\r\n\r\n<h5>Set any Devices</h5>\r\n\r\n<p>We Develops Responsive Web Design (RWD). Our Develop Website across a wide range of devices from Desktop, Tab, Mobile Phone any web Browser.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Dynamic User Friendly</h4>\r\n\r\n<h5>Easy to use</h5>\r\n\r\n<p>Our Develop Website easy to use admin panel edits images and other contents. Take Control of your Website and publish &amp; Share your Content Easily.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Social Media Integration</h4>\r\n\r\n<h5>Facebook, Google+</h5>\r\n\r\n<p>You can easily turn your local shop or business into an online shop with the help of an eCommerce Website.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>SEO Services</h4>\r\n\r\n<h5>Search Engine Optimization</h5>\r\n\r\n<p>We enable your website Search engine optimization (SEO), social profile setup, google Business listing etc..</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Unique design</h4>\r\n\r\n<h5>Best Website Builder</h5>\r\n\r\n<p>Proficient remarkable plan having control of changing site content without IT learning.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Web Security</h4>\r\n\r\n<h5>eCommerce security</h5>\r\n\r\n<p>Our clients&rsquo; views are extremely useful in driving continual improvement for protecting website security against hackers.</p>\r\n</div>\r\n</div>', 'a:3:{s:22:\"basic_pricing_subtitle\";s:13:\"STARTING FROM\";s:23:\"silver_pricing_subtitle\";s:13:\"STARTING FROM\";s:21:\"gold_pricing_subtitle\";s:13:\"STARTING FROM\";}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:17:\"Our Pricing Table\";s:10:\"step_title\";s:70:\"Choose your best plan from our reliable Web Design Prices and Packages\";s:13:\"step_subtitle\";s:70:\"Choose your best plan from our reliable Web Design Prices and Packages\";s:10:\"step_image\";s:23:\"digital-advertising.jpg\";}', NULL, NULL, NULL, 1, NULL, 1, '2018-10-31 09:48:40', '2018-12-08 20:10:47'),
(12, 6, 'Facebook Marketing', 'facebook-marketing', 'Facebook Marketing Sub title', 'digital-advertising.jpg', '<h2 style=\"text-align:center\">Help You With The Following Concepts :</h2>\r\n\r\n<div class=\"col-md-12\">\r\n	<div class=\"col-md-6\" style=\"float: left;\">\r\n		<ul>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Creating Facebook Ad/Through manage/ Through optimization.</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Design a Fan page/ Doing Optimization.</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Set up your Page</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Identify your audience</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Create compelling content</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Creating Facebook Marketing Strategy</a></li>\r\n		</ul>\r\n	</div>\r\n\r\n	<div class=\"col-md-6\" style=\"float: left;\">\r\n		<ul>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Advertise</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Increasing targeted fan.</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Making custom tab.</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Posting related content (Picture, status, video).</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Increasing traffic to your website through Facebook.</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Doing Brand and User Engagement Plan.</a></li>\r\n		</ul>\r\n	</div> \r\n</div>\r\n<div class=\"col-md-12\">\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n	<div class=\"ab-page-title text-center\">\r\n		<h1>Best Facebook Marketing in Bangladesh</h1>\r\n	</div>\r\n</div>\r\n</div>\r\n<div class=\"row\"> \r\n		 <p>The rapid growth of internet facilities peoples are more easily can connect the social network. In a statics of facebook, Bangladesh is the second largest user country. Obviously, it’s a great news for us. Our Country facebook user takes highest benefits of Facebook. Peoples are more likely use Facebook for taking update news every time. The business trend is now changing. Maximum business today depends on digital marketing & facebook is the best place for advertising your business. You can update your business products/services just with a click and it will show on your target client feed.BSD expertise in digital marketing especially in facebook marketing.</p>\r\n \r\n</div>', 'a:4:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;s:24:\"premium_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";N;s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";s:22:\"contact-us-baner_1.png\";}', NULL, NULL, NULL, 1, NULL, 1, '2018-10-31 10:11:55', '2018-12-11 18:01:19'),
(13, 5, 'Shared Hosting', 'shared-hosting', 'Shared Hosting Subtitle', 'contact-us-baner_1.png', '<h2>Terms and conditions :</h2>\r\n\r\n<ul>\r\n	<li>BSD registration hosting within 48 hours from bill pay time without bank holidays.</li>\r\n	<li>Hosting owner must pay renew bill before 30 days of expired date.</li>\r\n	<li>Client must pay renew bill to office via bkash or bank will procesing charge.</li>\r\n	<li>If client call for collect renew bill them 1000 taka service charge add with renew bill for every call</li>\r\n	<li>If hosting owner wait to renew after expired date then 3000 taka will add with renew charge (valid 2 week from expired date)</li>\r\n	<li>If customer failed to renew 15 days of expired date then Bangladesh Software Development will not take any responsibility of this hosting.</li>\r\n</ul>', 'a:3:{s:22:\"basic_pricing_subtitle\";s:8:\"PER YEAR\";s:23:\"silver_pricing_subtitle\";s:8:\"PER YEAR\";s:21:\"gold_pricing_subtitle\";s:8:\"PER YEAR\";}', NULL, 0, 0, 0.00, 'privacy-policy-banner.png', 'a:4:{s:18:\"pricing_info_title\";N;s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";s:13:\"our-story.jpg\";}', NULL, NULL, NULL, 1, NULL, 1, '2018-10-31 10:30:50', '2018-12-05 18:55:40'),
(16, 8, 'Hosting', 'hosting', 'Suitable Web Hosting Packages For You', 'privacy-policy-banner.png', '<h2>Terms and conditions :</h2>\r\n\r\n<ul>\r\n	<li>BSD registration hosting within 48 hours from bill pay time without bank holidays.</li>\r\n	<li>Hosting owner must pay renew bill before 30 days of expired date.</li>\r\n	<li>Client must pay renew bill to office via bkash or bank will procesing charge.</li>\r\n	<li>If client call for collect renew bill them 1000 taka service charge add with renew bill for every call</li>\r\n	<li>If hosting owner wait to renew after expired date then 3000 taka will add with renew charge (valid 2 week from expired date)</li>\r\n	<li>If customer failed to renew 15 days of expired date then Bangladesh Software Development will not take any responsibility of this hosting.</li>\r\n</ul>', 'a:8:{s:22:\"plan1_pricing_subtitle\";N;s:22:\"plan2_pricing_subtitle\";N;s:22:\"plan3_pricing_subtitle\";N;s:22:\"plan4_pricing_subtitle\";N;s:22:\"plan5_pricing_subtitle\";N;s:22:\"plan6_pricing_subtitle\";N;s:22:\"plan7_pricing_subtitle\";N;s:22:\"plan8_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:37:\"Suitable Web Hosting Packages For You\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";s:29:\"terms-a-conditions-banner.png\";}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-05 19:46:00', '2018-12-05 20:22:15'),
(17, 2, 'Search Engine Optimization', 'search-engine-optimization', NULL, NULL, '<h3 style=\"text-align:center\"><span style=\"color:rgb(255, 102, 0); font-family:arial !important\">SEARCH ENGINE OPTIMIZATION</span></h3>\r\n\r\n<p style=\"text-align:justify\">Without the services of the search engines our websites may be seen by just a handful of people. Every popular search engine has its own terms on how they rank a particular website or a page within the site. Webmasters and web service providers keep constant track of the ever changing algorithms so that they can help the websites they are servicing to perform at optimal levels. Though Google is the most popular search engine around the globe, we cannot afford to ignore the others because, as website owners, we have no knowledge about specific customer/demographic preferences.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Search Engine Optimization is an integral part of our web promotion services. A host of methods and tools are employed in ensuring that almost every popular search engine across the digital world finds your website and lists it on the first page. This is an essential measure to ensure that your website receives continuous targeted traffic. Search Engine Marketing employs many of the tools employed in search engine optimization though the expertise needed for this job is different from search engine optimization itself.</p>', NULL, NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";N;s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-05 21:56:05', '2018-12-05 21:56:05'),
(20, 2, 'Digital Marketing 360', 'digital-marketing-360', NULL, 'digital-advertising.jpg', '<h5>EMAIL MARKETING</h5>\r\n\r\n<p><img alt=\"inbox-gif.gif (250Ã188)\" src=\"https://publicate.it/img/250x0x8/f/b/2017/03/inbox-gif.gif\" style=\"border:0px; float:right; vertical-align:middle; width:200px\" /></p>\r\n\r\n<p>We will send your email proposal/design to 5 Lac corporate email of Bangladesh. These people are the top management of company like CEO, CTO, Project Manager, General Manager, Meneging Director, Chairman, President, Director etc. Beside this different kinds of organization like FBCCI, BGMEA, BASIS and different type of club like Dhaka Club, Uttara Club, Gulshan Club member&rsquo;s email address are available in our corporate database. So you can reach them easily.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We will send this email by our software and you will get access to see the LIVE report of how much email we are sending. This report shows the email count only. We need 2/3 days to complete the full email marketing. You have to provide the design in text or html or .jpg picture. We also need your email subject, reply email address. Your email marketing cost will be 12000 taka for one time campaign to 5 lac corporate email address.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<h5>SMS MARKETING</h5>\r\n\r\n<p><img alt=\"animated-sms-and-text-message-image-0033.gif (520Ã420)\" src=\"http://www.animatedimages.org/data/media/630/animated-sms-and-text-message-image-0033.gif\" style=\"border:0px; float:right; vertical-align:middle; width:200px\" /></p>\r\n\r\n<p>We have 5 Lac mobile numbers of different corporate people where you can send sms. Mobile number database list are given in the lower part of this proposal. You can send any amount of SMS. Generally 98% people read SMS. So this is one of the best marketing procedures to reach the target people. SMS marketing cost is 0.30 taka++ for non masking and 0.60 taka++ for masking. For masking you have to pay 15000 taka registration fee (one time).</p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<h5>FACEBOOK MARKETING</h5>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p>Now a day Facebook marketing is very important. You can easily reach too many people by Facebook. Just some simple procedure we follow. Create a company page on Facebook. Write some imporatnt and attractive article for facebook. Start advertisement and make it viral in facebook. We advertise for page like so that once one connect with your page, can get notification regularly. For content we charge 2000 taka per article and 10000 taka per video content. You have to 10 taka per like for facebook advertisement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h5>YOUTUBE MARKETING</h5>\r\n\r\n<p><img alt=\"Social_Media_Marketing_GIF_Raw_v006B.gif (1080Ã802)\" src=\"http://codewitty.com/wp-content/uploads/2017/03/Social_Media_Marketing_GIF_Raw_v006B.gif\" style=\"border:0px; float:right; vertical-align:middle; width:200px\" /></p>\r\n\r\n<p>If you want to do video marketing then youtube is the best way. Any type of video will start after your 5 second video advertisement. Generally we charge 10 taka per video advertisement. We take 10,000 taka for animated video.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h5>GOOGLE MARKETING</h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If any one searches your product or service then google will show your company website or your advertisement. This is called google adward or google advertisement. We will advertise your website and information by google so that people can get you easily. We charge 10 taka per click on advertisement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h5><strong>SEARCH ENGINE OPTIMIZATION</strong></h5>\r\n\r\n<p><img alt=\"writeseo-motvion-800x600.gif (800Ã600)\" src=\"https://cdn.dribbble.com/users/104417/screenshots/1891125/writeseo-motvion-800x600.gif\" style=\"border:0px; float:right; vertical-align:middle; width:200px\" /></p>\r\n\r\n<p>SEO is very important for every website for long time business and marketing. We generally work on 3 keyword for SEO and charge 15000 taka per month. This is a regular marketing option. Generally it will take 3-6 month for rank and it will show 1-3 pages in google search. Additional per keyword: 5000 taka</p>', NULL, NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:21:\"Digital Marketing 360\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-05 23:13:42', '2018-12-05 23:20:30'),
(21, 1, 'Domain Registration', 'domain-registration', NULL, 'blog-details-banner_1.jpg', '<p><span style=\"color:rgb(68, 58, 68); font-family:roboto,sans-serif; font-size:16px\">Get your own .com, .net, .org, .info, .biz, .us, .name, Domain you can register or renew a domain name for just Yearly Tk. 1500/- or $20. There are no hidden fees! A domain name is your unique name on the Internet. It allows your company, organization or family to establish an Internet presence, consisting of your personalized email addresses and your own web site address.</span></p>', 'PARTICULARS', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:19:\"Domain Registration\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-05 23:22:29', '2018-12-05 23:22:29'),
(22, 1, 'Store Management Software', 'store-management-software', NULL, 'privacy-policy-banner.png', '<div class=\"row\" style=\"box-sizing: border-box; margin: 0px auto; max-width: 1170px; width: 1170px;\">\r\n<div class=\"col-sm-4\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 1170px;\">\r\n<h3>Delivery &amp; Distribution:</h3>\r\n\r\n<ul>\r\n	<li>Delivery Challan</li>\r\n	<li>Sales Return Against. Inventory</li>\r\n	<li>Sales Return No Inventory.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-sm-4\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 1170px;\">\r\n<h3>Goods Receive Note</h3>\r\n\r\n<ul>\r\n	<li>Purchase GRN, Import</li>\r\n	<li>Purchase GRN, Import Report</li>\r\n	<li>Purchase GRN, Local</li>\r\n	<li>Purchase Return &ndash; Against Inv.</li>\r\n	<li>Purchase Return &ndash; Against Inv.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-sm-4\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 1170px;\">\r\n<h3>Stationary Data</h3>\r\n\r\n<ul>\r\n	<li>Product</li>\r\n	<li>Goods Receive Note</li>\r\n	<li>Add Purchase GRN</li>\r\n	<li>Purchase GRN</li>\r\n	<li>Purchase GRN Report</li>\r\n</ul>\r\n</div>\r\n</div>', 'PARTICULARS', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:34:\"STORE MANAGEMENT SOFTWARE FEATURES\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-05 23:53:00', '2018-12-06 00:05:11'),
(23, 6, 'E-commerce Development', 'e-commerce-development', NULL, 'our-story.jpg', '<h2 style=\"text-align:center\">Best E-Commerce Developers in Bangladesh</h2>\r\n\r\n<div class=\"col-md-12\">\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Dynamic Website Management Panel</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customized Responsive Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Search engine friendly</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Clear, User-friendly Navigation</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Categorie Management</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Brands &amp; Products Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">eCommerce Hosting</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">eCommerce Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">eCommerce Apps Development</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">eCommerce Promotion</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">An easy-to-use checkout</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Inverntory Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Promotion and discount Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Reporting Tools</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Email marketing integration</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Multiple payment options</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n<div class=\"ab-page-title text-center\">\r\n<h1>E-Commerce Features</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Dynamic Menu Management</h4>\r\n\r\n<h5>Easy Menu Management</h5>\r\n\r\n<p>User will be creating site Menu bars and top Menu bars in their site and added Icon and pictures on the menu. Users will be creating especial menu at extraordinary time.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Product Management</h4>\r\n\r\n<h5>Unlimited attributes &amp; combinations</h5>\r\n\r\n<p>Easy to Add, Edit and Delete Product Stock. Unlimited attributes groups like as sizes, colors, models and products combinations like as red, size XL etc.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Orders &amp; Inventory Management</h4>\r\n\r\n<h5>Orders Tracking, Inventory Status</h5>\r\n\r\n<p>Admin manage all orders, Orders monitoring by email and SMS, Delivery tracking and status shown to the customer, PDF invoices, slips and delivery slips, Inventory Status.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Search Engine Optimization</h4>\r\n\r\n<h5>SEO Facilities</h5>\r\n\r\n<p>Search Engine Optimization, often referred to as SEO, is a strategic process used to improve a web-site or Web page&rsquo;s visibility in search engines organic placement, especially on Google.com.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>SMS and Email Integration</h4>\r\n\r\n<h5>Bulk SMS Sending Facilities</h5>\r\n\r\n<p>SMS Send Facility there in e-Commerce site, Organization can send SMS $ eMail to Client, by the selecting in system all Member/ Client one by one or at once &amp; out of database.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Web Security</h4>\r\n\r\n<h5>eCommerce security</h5>\r\n\r\n<p>Our clients&rsquo; views are extremely useful in driving continual improvement for protecting website security against hackers.</p>\r\n</div>\r\n</div>', 'a:4:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;s:24:\"premium_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:17:\"Our Pricing table\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-06 18:00:04', '2018-12-11 17:49:27'),
(24, 6, 'Point of Sales', 'point-of-sales', NULL, 'blog-details-banner_1.jpg', '<h2 style=\"text-align:center\">Best POS Software In Dhaka Bangladesh</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Product Entry</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Product Sales feature</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Product Purchase feature </a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Inventory Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Sales reporting and analytics</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customer Account Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Employee management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Barcode Generation</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Accounts Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Barcode Scanning </a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Pricing Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Retail Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Discount Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Returns Tracking</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n    <div class=\"ab-page-title text-center\">\r\n        <h1><span>Software Features</span></h1>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"row\" sty>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Inventory-Sales</h4>\r\n        <h5>Inventory Sales Modules</h5>\r\n        <p>Product Order, Stock Management, Sales Management with Bar-code (POS Sale), Profit & Loss, Supplier & Client Manage.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>General Accounts</h4>\r\n        <h5>General Spending & Income</h5>\r\n        <p>Project-wise Accounts Management, Receivables & Payables Entry, Due Payment, Balance Transference to other account, Account wise Monthly-Yearly Report etc.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Salary Management</h4>\r\n        <h5>Payroll Management System</h5>\r\n        <p>Employ Information, Employee Pay clip Generate, Employee Advance Payment, Advance Adjustment, Report, SMS Communication.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Cable Billing</h4>\r\n        <h5>Cable TV & Internet Line Billing</h5>\r\n        <p>Cable TV Billing, Internet Line Billing, Utility Billing Automatic Invoice Generate Every Month, Line Man Wise Bill, Area Wise Bill, Bill Pay by Mobile (bKash) Bank, SMS Sending etc.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Production-Costing</h4>\r\n        <h5>Manufacturer Calculating</h5>\r\n        <p>The cornerstone of financial analysis for any manufacturer is calculating an accurate product cost & Inventory. Row Material Management, Production Function & Cost Management.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>SMS & e-Mail Send</h4>\r\n        <h5>SMS & e-Mail Sending Facility</h5>\r\n        <p>SMS & e-Mail Send Facility there in Software, Organization can send SMS to Client, by the selecting in system all Member/ Client one by one or at once & out of database.</p>\r\n    </div>\r\n</div>', 'a:4:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;s:24:\"premium_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:32:\"Pricing Table for Point of Sales\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-08 19:05:56', '2018-12-08 20:21:31'),
(25, 6, 'Account & Inventory Management Software', 'account-inventory-management-software', NULL, 'our-team.jpg', '<h2 style=\"text-align:center\">Best accounting Software in Bangladesh</h2>\r\n<div class=\"row\">\r\n    <div class=\"col-md-4\">\r\n        <ul>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Accounts Payable</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Accounts Receivable</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\"> Cash Management </a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\"> Fixed Assets</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\"> General Ledger</a></li>\r\n        </ul>\r\n    </div>\r\n\r\n    <div class=\"col-md-4\">\r\n        <ul>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\"> Inventory Management</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Purchasing Management</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Import/export Management</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Role-based Authentication</a>\r\n            </li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Point Of Sales (POS) </a></li>\r\n        </ul>\r\n    </div>\r\n\r\n    <div class=\"col-md-4\">\r\n        <ul>\r\n\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Stock level alerts</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Bar-coding</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Financial Statement</a></li>\r\n        </ul>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n    <div class=\"ab-page-title text-center\">\r\n        <h1><span>Software Features</span></h1>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"row\" sty>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Inventory-Sales Management</h4>\r\n        <h5>Inventory Sales Modules</h5>\r\n        <p>Product Order, Stock Management, Sales Management with Bar-code (POS Sale), Profit & Loss, Supplier & Client\r\n            Manage.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>General Accounts</h4>\r\n        <h5>General Spending & Income</h5>\r\n        <p>Project-wise Accounts Management, Receivables & Payables Entry, Due Payment, Balance Transference to other\r\n            account, Account wise Monthly-Yearly Report etc.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Salary Management</h4>\r\n        <h5>Payroll Management System</h5>\r\n        <p>Employ Information, Employee Pay clip Generate, Employee Advance Payment, Advance Adjustment, Report, SMS\r\n            Communication.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>User Role Management</h4>\r\n        <h5>User Permission Settings</h5>\r\n        <p>Manage assets more efficiently by defining user roles. Staff Users have restricted access while Admins can\r\n            edit items and run reports.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Units of Measurement</h4>\r\n        <h5>Full support for Units of Measurement</h5>\r\n        <p>Where units of measurement are concerned, our inventory software comes with unlimited options. From big units\r\n            to Small unite, hours to boxes or kilograms, use whatever measure you need.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>SMS & e-Mail Send</h4>\r\n        <h5>SMS & e-Mail Sending Facility</h5>\r\n        <p>SMS & e-Mail Send Facility there in Software, Organization can send SMS to Client, by the selecting in system\r\n            all Member/ Client one by one or at once & out of database.</p>\r\n    </div>\r\n</div>', 'a:4:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;s:24:\"premium_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:32:\"Pricing Table for Point of Sales\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-08 20:31:38', '2018-12-08 20:34:56'),
(26, 6, 'Restaurant Management Software', 'restaurant-management-software', NULL, 'contact-us-baner_1.png', '<h2 style=\"text-align:center\">Restaurant Management Software Bangladesh</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Inventory Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Reservations Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Kitchen Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Sales Tracking</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Menu Management</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Table Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Wait List Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Payroll Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Point of Sale (POS)</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Waitstaff Management</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Food Costing</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Delivery Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Online Ordering</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Gift Card Management</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h2 style=\"text-align:center\">Manage your restaurant chains and franchises from a single place</h2>\r\n<p>The complete Restaurant Management Software from Smart Software Inc. Smart Account or POS is your one stop solution to all your restaurant needs. Right from table reservation to that incoming takeaway order and everything in between, our Restaurant Management helps to manage your restaurant activities with the help of a few clicks. Connect your kitchen, your lobby, your bar and your cash till with our Restaurant Management and oversee all the activities from one place. Smart Account came up with good user friendly interface that allowing the user to interact with the software or hardware in a natural and intuitive way. We Build Custom Software for Your Business Need! We work with you to ensure zero error, on-time delivery.</p>\r\n</div>\r\n</div>\r\n\r\n<div style=\"font-size: 15px; margin-top: 22px;\">\r\n<div class=\"ab-page-title text-center\">\r\n<h1>Software Features</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Inventory-Sales</h4>\r\n\r\n<h5>Inventory Sales Modules</h5>\r\n\r\n<p>Product Order, Stock Management, Sales Management with Bar-code (POS Sale), Profit &amp; Loss, Supplier &amp; Client Manage.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>General Accounts</h4>\r\n\r\n<h5>General Spending &amp; Income</h5>\r\n\r\n<p>Project-wise Accounts Management, Receivables &amp; Payables Entry, Due Payment, Balance Transference to other account, Account wise Monthly-Yearly Report etc.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Salary Management</h4>\r\n\r\n<h5>Payroll Management System</h5>\r\n\r\n<p>Employ Information, Employee Pay clip Generate, Employee Advance Payment, Advance Adjustment, Report, SMS Communication.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Cable Billing</h4>\r\n\r\n<h5>Cable TV &amp; Internet Line Billing</h5>\r\n\r\n<p>Cable TV Billing, Internet Line Billing, Utility Billing Automatic Invoice Generate Every Month, Line Man Wise Bill, Area Wise Bill, Bill Pay by Mobile (bKash) Bank, SMS Sending etc.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Production-Costing</h4>\r\n\r\n<h5>Manufacturer Calculating</h5>\r\n\r\n<p>The cornerstone of financial analysis for any manufacturer is calculating an accurate product cost &amp; Inventory. Row Material Management, Production Function &amp; Cost Management.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>SMS &amp; e-Mail Send</h4>\r\n\r\n<h5>SMS &amp; e-Mail Sending Facility</h5>\r\n\r\n<p>SMS &amp; e-Mail Send Facility there in Software, Organization can send SMS to Client, by the selecting in system all Member/ Client one by one or at once &amp; out of database.</p>\r\n</div>\r\n</div>', 'a:4:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;s:24:\"premium_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:39:\"Pricing Table for Restaurant Management\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-08 20:45:21', '2018-12-11 18:21:17'),
(27, 6, 'School Management Software', 'school-management-software', NULL, 'terms-a-conditions-banner.png', '<h2 style=\"text-align:center\">School Management Software In Bangladesh</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Admission Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Account Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Laboratory Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Human Resource Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Profile Management Software</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Library Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Student Attendees Tracking and Analytics</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Financial Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Attendance Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Scheduling</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Examination Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Alumni Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Fees Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Evaluation Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Website Development</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h2 style=\"text-align:center\">Best School Management Software In Dhaka Bangladesh</h2>\r\n\r\n<p><strong>Smart Academic System</strong>&nbsp;is a complete Dynamic Academic Institution Management&nbsp;<strong>software</strong>, which is user friendly Web Based Software. This Software Coverd&nbsp;<strong>Academic Management,, Account &amp; Fees Management, Attendance Tracking, Library Management, Online Fess Management etc</strong>. This solution is essential for every Educational Institute like English medium School, Bengali medium School, University, College, Madrasa etc.\r\nWe Build Custom Software for Your Business Need! We work with you to ensure zero error, on-time delivery.</p></div>\r\n</div>\r\n\r\n<div style=\"font-size: 15px; margin-top: 22px;\">\r\n<div class=\"ab-page-title text-center\">\r\n<h1>Software Features</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Academic Management</h4>\r\n\r\n<h5>Academic Management</h5>\r\n\r\n<p>Admission Management, Courses and Batches Management, Time-table, Event Calendar, Examination Management, Result Management , Student Attendance etc. All kinds of Academic solution are available in one platform.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Account &amp; Fees Management</h4>\r\n\r\n<h5>Student &amp; General Account</h5>\r\n\r\n<p>Fees management system helps in billing students in this module. It also provides course fees details, student payment, mode of payment and balance information etc. General Accounts like as Journal Entries, Payment Entries, Account Summary, General Ledger etc include this software.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Attendance Tracking</h4>\r\n\r\n<h5>Real Time Attendance, SMS Sending</h5>\r\n\r\n<p>Attendance tracking with Proximity Card, Finger Print, Unique ID Communicate with students, parents and employees by sending SMS text messages right to their mobile phones from real time attendance system.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Faculty / Staff Management</h4>\r\n\r\n<h5>Payroll Management</h5>\r\n\r\n<p>Record and organize all employee details enabling quick access to employee information and effective management of employee Payroll Management and leave Management, Attendance Management, HR information Management.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Library Management</h4>\r\n\r\n<h5>Library Management</h5>\r\n\r\n<p>Smart Academic System is the complete library management and automation solution that enables information providers, Students &amp; librarians to manage &amp; disseminate information available in various kind of resources..</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>SMS &amp; e-Mail Send</h4>\r\n\r\n<h5>SMS &amp; e-Mail Sending Facility</h5>\r\n\r\n<p>SMS &amp; e-Mail Send Facility there in Software, Organization can send SMS to Client, by the selecting in system all Member/ Client one by one or at once &amp; out of database.</p>\r\n</div>\r\n</div>', 'a:4:{s:22:\"basic_pricing_subtitle\";s:34:\"Monthly Subscription 15 TK/Student\";s:23:\"silver_pricing_subtitle\";s:34:\"Monthly Subscription 12 TK/Student\";s:21:\"gold_pricing_subtitle\";s:34:\"Monthly Subscription 10 TK/Student\";s:24:\"premium_pricing_subtitle\";s:33:\"Monthly Subscription 8 TK/Student\";}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";N;s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-08 21:56:43', '2018-12-11 18:18:09'),
(28, 6, 'Pharmacy Management Software', 'pharmacy-management-software', NULL, 'blog-details-banner.jpg', '<h2 style=\"text-align:center\">Pharmacy Management Software in Bangladesh</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Product Entry</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Product Sales feature</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Product Purchase feature</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Inventory Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Sales reporting and analytics</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customer Account Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Employee management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Barcode Generation</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Accounts Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Barcode Scanning</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Pricing Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Retail Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Discount Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Returns Tracking</a></li>\r\n</ul>\r\n</div> \r\n</div>\r\n<div class=\"row\">\r\n	<div class=\"col-md-12\">\r\n		<h2 style=\"text-align:center\">Pharmacy Management Software</h2>\r\n\r\n<p>Smart POS Pharmacy Software helps shop owners to manage different records like Billing Records, Client wise Reports, accurate stocking of Drugs, Reports, Order Management in one go. Get automatic updates on Negative Stocks, updates on pending prescription, Expiry Stock alerts, Reminder regarding appointments and keep a check on Sales or purchase of restricted items. Smart POS is a most user friendly Point of Sales in Bangladesh. This POS Software is Online Offline Software. This a Browser based Solution which combines Multi-user Account System, Responsive user Interface, Accounting anytime, anywhere, powerful reporting, easy to Customization, Customization Report etc. Simple, easy-to-use cloud POS software to help you manage your business, the smart way! We Build Custom Software for Your Business Need! We work with you to ensure zero error, on-time delivery.</p>\r\n	</div>\r\n</div>\r\n\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n<div class=\"ab-page-title text-center\">\r\n<h1>Software Features</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Inventory-Sales</h4>\r\n\r\n<h5>Inventory Sales Modules</h5>\r\n\r\n<p>Product Order, Stock Management, Sales Management with Bar-code (POS Sale), Profit &amp; Loss, Supplier &amp; Client Manage.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>General Accounts</h4>\r\n\r\n<h5>General Spending &amp; Income</h5>\r\n\r\n<p>Project-wise Accounts Management, Receivables &amp; Payables Entry, Due Payment, Balance Transference to other account, Account wise Monthly-Yearly Report etc.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Salary Management</h4>\r\n\r\n<h5>Payroll Management System</h5>\r\n\r\n<p>Employ Information, Employee Pay clip Generate, Employee Advance Payment, Advance Adjustment, Report, SMS Communication.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Cable Billing</h4>\r\n\r\n<h5>Cable TV &amp; Internet Line Billing</h5>\r\n\r\n<p>Cable TV Billing, Internet Line Billing, Utility Billing Automatic Invoice Generate Every Month, Line Man Wise Bill, Area Wise Bill, Bill Pay by Mobile (bKash) Bank, SMS Sending etc.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Production-Costing</h4>\r\n\r\n<h5>Manufacturer Calculating</h5>\r\n\r\n<p>The cornerstone of financial analysis for any manufacturer is calculating an accurate product cost &amp; Inventory. Row Material Management, Production Function &amp; Cost Management.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>SMS &amp; e-Mail Send</h4>\r\n\r\n<h5>SMS &amp; e-Mail Sending Facility</h5>\r\n\r\n<p>SMS &amp; e-Mail Send Facility there in Software, Organization can send SMS to Client, by the selecting in system all Member/ Client one by one or at once &amp; out of database.</p>\r\n</div>\r\n</div>', 'a:4:{s:22:\"basic_pricing_subtitle\";s:36:\"Monthly Service & Server Cost 500 TK\";s:23:\"silver_pricing_subtitle\";s:36:\"Monthly Service & Server Cost 800 TK\";s:21:\"gold_pricing_subtitle\";s:38:\"Monthly Service & Server Cost 1,000 TK\";s:24:\"premium_pricing_subtitle\";s:38:\"Monthly Service & Server Cost 3,000 TK\";}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:46:\"Pricing Table for Pharmacy Management Software\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-08 22:12:22', '2018-12-11 18:13:15');
INSERT INTO `packages` (`id`, `type`, `title`, `slug`, `subtitle`, `image`, `description`, `pricing_detail`, `requirements`, `views`, `sale_qty`, `sale_amount`, `mover_img`, `extra`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(29, 5, 'ERP Management Software', 'erp-management-software', NULL, 'privacy-policy-banner.png', '<h2 style=\"text-align:center\">Custom Business Software Development</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Production Costing Software</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Hospital Management Software</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customer Relationship Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Human Resource Management </a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Enterprise Resource Planning</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Account Management Software</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Library Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Real Estate ERP</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Garments ERP</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Mobile Apps Development</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Point Of Sales (POS)</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Restaurant Management</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Cable Biling Software</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">School Management Software</a></li>\r\n</ul>\r\n</div>\r\n \r\n</div>\r\n<div class=\"row\">\r\n	<div class=\"col-md-12\">\r\n		<h2 style=\"text-align:center\">Customized Business Software</h2>\r\n\r\n<p><strong>Smart Software</strong> Develop Customize ERP Software for your Requirement. Smart Software works with ERP, HRM, Accounting, Payroll, School Management software development and implementation in an enterprise scale. We Build Custom Software for Your Business Need! We work with you to ensure zero error, on-time delivery.</p>\r\n	</div>\r\n</div>\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n<div class=\"ab-page-title text-center\">\r\n<h1>Software Features</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Garments ERP</h4>\r\n\r\n<h5>Garments Merchandising Software</h5>\r\n\r\n<p>Smart Software providers Garments ERP are one of the Best ERP solutions in Bangladesh, especially for Garments industries which is integrated with different modules that cover all the aspects of your Garments Business. This solution supports multi-currency and multi-location based operations.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Hospital Management Software</h4>\r\n\r\n<h5>Smart Hospital Management</h5>\r\n\r\n<p>Hospital Management Software is a most user friendly Browser based Solution which combines Multiuser Account System, Responsive User Interface, Easy Customization, Monitoring of Whole Hospital, Profile System, SMS Notification, Medication History and etc.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Account &amp; Inventory Management</h4>\r\n\r\n<h5>Best Accounting Software in Bangladesh</h5>\r\n\r\n<p>Smart Account is a most user friendly Browser based accounting app which combines Multi-user easy accounting software for small business. This account Software use as offline accounting software, we also provide online accounting services.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>School Management Software</h4>\r\n\r\n<h5>Smart Academic System</h5>\r\n\r\n<p>&ldquo;Smart Academic System&rdquo; is a complete Dynamic Academic Management software, which is user friendly Web Based Software. This solution is essential for every Educational Institute like English medium School, Bengali medium School, University, College, Madrasa etc.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Human Resources Management</h4>\r\n\r\n<h5>Smart HRM</h5>\r\n\r\n<p>Smart HRM is an application to facilitate the complex task of managing human resources. It has a powerful tool which enables user to manage personnel info, attendance, training, payroll, PF and income tax.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Enterprise Resource Planning</h4>\r\n\r\n<h5>Smart HRM</h5>\r\n\r\n<p>That an organization can use to collect, store, manage and interpret data from many business activities, including: product planning, cost, manufacturing or service delivery, marketing and sales Management.</p>\r\n</div>\r\n</div>', 'a:3:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:41:\"Pricing Table for ERP Management Software\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-08 22:26:33', '2018-12-11 18:10:07'),
(30, 5, 'Garments ERP Software', 'garments-erp-software', NULL, 'our-story.jpg', '<h2 style=\"text-align:center\">Garments ERP Software</h2>\r\n\r\n<div class=\"row\">\r\n	<div class=\"col-md-4\">\r\n		<ul>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Production Costing Software</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Hospital Management Software</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customer Relationship Management</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Human Resource Management </a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Enterprise Resource Planning</a></li>\r\n		</ul>\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<ul>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Account Management Software</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Library Management</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Real Estate ERP</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Garments ERP</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Mobile Apps Development</a></li>\r\n		</ul>\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<ul>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Point Of Sales (POS)</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Restaurant Management</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Cable Biling Software</a></li>\r\n			<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">School Management Software</a></li>\r\n		</ul>\r\n	</div>\r\n\r\n\r\n</div>\r\n<div class=\"row\">\r\n	<div class=\"col-md-12\">\r\n		<h2 style=\"text-align:center\">Garments ERP Software</h2>\r\n\r\n	<p><strong>Smart Software</strong> Develop Customize ERP Software for your Requirement. Smart Software works with ERP, HRM, Accounting, Payroll, School Management software development and implementation in an enterprise scale. We Build Custom Software for Your Business Need! We work with you to ensure zero error, on-time delivery.</p>\r\n	</div>\r\n</div>\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n	<div class=\"ab-page-title text-center\">\r\n		<h1>Software Features</h1>\r\n	</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n	<div class=\"packageFeaturesBox\">\r\n		<h4>Garments ERP</h4>\r\n\r\n		<h5>Garments Merchandising Software</h5>\r\n\r\n		<p>Smart Software providers Garments ERP are one of the Best ERP solutions in Bangladesh, especially for Garments industries which is integrated with different modules that cover all the aspects of your Garments Business. This solution supports multi-currency and multi-location based operations.</p>\r\n	</div>\r\n\r\n	<div class=\"packageFeaturesBox\">\r\n		<h4>Hospital Management Software</h4>\r\n\r\n		<h5>Smart Hospital Management</h5>\r\n\r\n		<p>Hospital Management Software is a most user friendly Browser based Solution which combines Multiuser Account System, Responsive User Interface, Easy Customization, Monitoring of Whole Hospital, Profile System, SMS Notification, Medication History and etc.</p>\r\n	</div>\r\n\r\n	<div class=\"packageFeaturesBox\">\r\n		<h4>Account &amp; Inventory Management</h4>\r\n\r\n		<h5>Best Accounting Software in Bangladesh</h5>\r\n\r\n		<p>Smart Account is a most user friendly Browser based accounting app which combines Multi-user easy accounting software for small business. This account Software use as offline accounting software, we also provide online accounting services.</p>\r\n	</div>\r\n\r\n	<div class=\"packageFeaturesBox\">\r\n		<h4>School Management Software</h4>\r\n\r\n		<h5>Smart Academic System</h5>\r\n\r\n		<p>&ldquo;Smart Academic System&rdquo; is a complete Dynamic Academic Management software, which is user friendly Web Based Software. This solution is essential for every Educational Institute like English medium School, Bengali medium School, University, College, Madrasa etc.</p>\r\n	</div>\r\n\r\n	<div class=\"packageFeaturesBox\">\r\n		<h4>Human Resources Management</h4>\r\n\r\n		<h5>Smart HRM</h5>\r\n\r\n		<p>Smart HRM is an application to facilitate the complex task of managing human resources. It has a powerful tool which enables user to manage personnel info, attendance, training, payroll, PF and income tax.</p>\r\n	</div>\r\n\r\n	<div class=\"packageFeaturesBox\">\r\n		<h4>Enterprise Resource Planning</h4>\r\n\r\n		<h5>Smart HRM</h5>\r\n\r\n		<p>That an organization can use to collect, store, manage and interpret data from many business activities, including: product planning, cost, manufacturing or service delivery, marketing and sales Management.</p>\r\n	</div>\r\n</div>', 'a:3:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";N;s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-08 22:31:06', '2018-12-11 18:07:16'),
(31, 6, 'Email Marketing', 'email-marketing', NULL, 'our-story.jpg', '<h2 style=\"text-align:center\">Email Marketing Provider in Bangladesh</h2>\r\n<div class=\"row\">\r\n    <div class=\"col-md-4\">\r\n        <ul>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Production Costing Software</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Hospital Management Software</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customer Relationship Management</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Human Resource Management </a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Enterprise Resource Planning</a></li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"col-md-4\">\r\n        <ul>\r\n\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\"> Account Management Software</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Library Management</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Real Estate ERP</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\"> Garments ERP</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Mobile Apps Development</a></li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"col-md-4\">\r\n        <ul>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Point Of Sales (POS)</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Restaurant Management</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Cable Biling Software</a></li>\r\n            <li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">School Management Software</a></li>\r\n        </ul>\r\n    </div>\r\n    <h2>Email Marketing Services In Bangladesh</h2>\r\n\r\n    <p>If you need to sell your products or Promote your Brand our email marketing platform makes it easy to create\r\n        email campaigns that best suit your message. Smart Software Inc. provides you the super effective email\r\n        marketing platform in Bangladesh which can help you to reach your target customers and grow their business. Our\r\n        long list of powerful features let you create higher-performing email campaign in less moment.\r\n\r\n        Our email marketing software is web based. We will provide you our software access from where you can easily\r\n        check the LIVE report of email marketing that how much email is send</p>\r\n\r\n</div>\r\n\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n    <div class=\"ab-page-title text-center\">\r\n        <h1>\r\n            <span>Software Features</span>\r\n        </h1>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Garments ERP</h4>\r\n        <h5>Garments Merchandising Software</h5>\r\n        <p>Smart Software providers Garments ERP are one of the Best ERP solutions in Bangladesh, especially for\r\n            Garments industries which is integrated with different modules that cover all the aspects of your Garments\r\n            Business. This solution supports multi-currency and multi-location based operations.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Hospital Management Software</h4>\r\n        <h5>Smart Hospital Management</h5>\r\n        <p>Hospital Management Software is a most user friendly Browser based Solution which combines Multiuser Account\r\n            System, Responsive User Interface, Easy Customization, Monitoring of Whole Hospital, Profile System, SMS\r\n            Notification, Medication History and etc.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Account & Inventory Management</h4>\r\n        <h5>Best Accounting Software in Bangladesh</h5>\r\n        <p>Smart Account is a most user friendly Browser based accounting app which combines Multi-user easy accounting\r\n            software for small business. This account Software use as offline accounting software, we also provide\r\n            online accounting services.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>School Management Software</h4>\r\n        <h5>Smart Academic System</h5>\r\n        <p>“Smart Academic System” is a complete Dynamic Academic Management software, which is user friendly Web Based\r\n            Software. This solution is essential for every Educational Institute like English medium School, Bengali\r\n            medium School, University, College, Madrasa etc.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Human Resources Management</h4>\r\n        <h5>Smart HRM</h5>\r\n        <p>Smart HRM is an application to facilitate the complex task of managing human resources. It has a powerful\r\n            tool which enables user to manage personnel info, attendance, training, payroll, PF and income tax.</p>\r\n    </div>\r\n    <div class=\"packageFeaturesBox\">\r\n        <h4>Enterprise Resource Planning</h4>\r\n        <h5>Smart HRM</h5>\r\n        <p>That an organization can use to collect, store, manage and interpret data from many business activities,\r\n            including: product planning, cost, manufacturing or service delivery, marketing and sales Management.</p>\r\n    </div>\r\n</div>', 'a:4:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;s:24:\"premium_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:33:\"Pricing Table for Email Marketing\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-09 00:17:07', '2018-12-09 00:17:07'),
(32, 5, 'Company Website', 'company-website', NULL, 'blog-details-banner_1.jpg', '<h2 style=\"text-align:center\">Complete Web Solutions for Your Branding</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Dynamic Website Management Panel</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customized Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Responsive Website Design </a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">High Security Standard</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Search engine friendly</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Website Hosting</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Quality Web Content</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Web application development</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Simple and Professional Web Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Clear, User-friendly Navigation</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Webpage Speed</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n<div class=\"ab-page-title text-center\">\r\n<h1>Company Website Features</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Responsive Web Design</h4>\r\n\r\n<h5>Set any Devices</h5>\r\n\r\n<p>We Develops Responsive Web Design (RWD). Our Develop Website across a wide range of devices from Desktop, Tab, Mobile Phone any web Browser.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Dynamic User Friendly</h4>\r\n\r\n<h5>Easy to use</h5>\r\n\r\n<p>Our Develop Website easy to use admin panel edits images and other contents. Take Control of your Website and publish &amp; Share your Content Easily.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Social Media Integration</h4>\r\n\r\n<h5>Facebook, Google+</h5>\r\n\r\n<p>You can easily turn your local shop or business into an online shop with the help of an eCommerce Website.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>SEO Services</h4>\r\n\r\n<h5>Search Engine Optimization</h5>\r\n\r\n<p>We enable your website Search engine optimization (SEO), social profile setup, google Business listing etc..</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Unique design</h4>\r\n\r\n<h5>Best Website Builder</h5>\r\n\r\n<p>Proficient remarkable plan having control of changing site content without IT learning.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Web Security</h4>\r\n\r\n<h5>eCommerce security</h5>\r\n\r\n<p>Our clients&rsquo; views are extremely useful in driving continual improvement for protecting website security against hackers.</p>\r\n</div>\r\n</div>', 'a:3:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:17:\"Our Pricing table\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-09 17:13:56', '2018-12-09 17:33:37'),
(33, 5, 'Newspaper Website', 'newspaper-website', NULL, 'our-team.jpg', '<h2 style=\"text-align:center\">Complete Web Solutions for Your Branding</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Dynamic Website Management Panel</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customized Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Responsive Website Design </a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">High Security Standard</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Search engine friendly</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Website Hosting</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Quality Web Content</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Web application development</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Simple and Professional Web Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Clear, User-friendly Navigation</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Webpage Speed</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n<div class=\"ab-page-title text-center\">\r\n<h1><span>Newspaper Website Features</span></h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Responsive Web Design</h4>\r\n\r\n<h5>Set any Devices</h5>\r\n\r\n<p>We Develops Responsive Web Design (RWD). Our Develop Website across a wide range of devices from Desktop, Tab, Mobile Phone any web Browser.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Dynamic User Friendly</h4>\r\n\r\n<h5>Easy to use</h5>\r\n\r\n<p>Our Develop Website easy to use admin panel edits images and other contents. Take Control of your Website and publish &amp; Share your Content Easily.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Social Media Integration</h4>\r\n\r\n<h5>Facebook, Google+</h5>\r\n\r\n<p>You can easily turn your local shop or business into an online shop with the help of an eCommerce Website.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>SEO Services</h4>\r\n\r\n<h5>Search Engine Optimization</h5>\r\n\r\n<p>We enable your website Search engine optimization (SEO), social profile setup, google Business listing etc..</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Unique design</h4>\r\n\r\n<h5>Best Website Builder</h5>\r\n\r\n<p>Proficient remarkable plan having control of changing site content without IT learning.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Web Security</h4>\r\n\r\n<h5>eCommerce security</h5>\r\n\r\n<p>Our clients&rsquo; views are extremely useful in driving continual improvement for protecting website security against hackers.</p>\r\n</div>\r\n</div>', 'a:3:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:17:\"Our Pricing table\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-09 17:17:05', '2018-12-09 17:17:05'),
(34, 5, 'Blogging Website', 'blogging-website', NULL, 'blog-details-banner_1.jpg', '<h2 style=\"text-align:center\">Complete Web Solutions for Your Branding</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Dynamic Website Management Panel</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customized Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Responsive Website Design </a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">High Security Standard</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Search engine friendly</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Website Hosting</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Quality Web Content</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Web application development</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Simple and Professional Web Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Clear, User-friendly Navigation</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Webpage Speed</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n<div class=\"ab-page-title text-center\">\r\n<h1><span> Blogging Website Features</span></h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Responsive Web Design</h4>\r\n\r\n<h5>Set any Devices</h5>\r\n\r\n<p>We Develops Responsive Web Design (RWD). Our Develop Website across a wide range of devices from Desktop, Tab, Mobile Phone any web Browser.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Dynamic User Friendly</h4>\r\n\r\n<h5>Easy to use</h5>\r\n\r\n<p>Our Develop Website easy to use admin panel edits images and other contents. Take Control of your Website and publish &amp; Share your Content Easily.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Social Media Integration</h4>\r\n\r\n<h5>Facebook, Google+</h5>\r\n\r\n<p>You can easily turn your local shop or business into an online shop with the help of an eCommerce Website.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>SEO Services</h4>\r\n\r\n<h5>Search Engine Optimization</h5>\r\n\r\n<p>We enable your website Search engine optimization (SEO), social profile setup, google Business listing etc..</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Unique design</h4>\r\n\r\n<h5>Best Website Builder</h5>\r\n\r\n<p>Proficient remarkable plan having control of changing site content without IT learning.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Web Security</h4>\r\n\r\n<h5>eCommerce security</h5>\r\n\r\n<p>Our clients&rsquo; views are extremely useful in driving continual improvement for protecting website security against hackers.</p>\r\n</div>\r\n</div>', 'a:3:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:17:\"Our Pricing table\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-09 17:19:57', '2018-12-09 17:19:57'),
(35, 5, 'Educational Website', 'educational-website', NULL, 'terms-a-conditions-banner.png', '<h2 style=\"text-align:center\">Complete Web Solutions for Your Branding</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Dynamic Website Management Panel</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customized Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Responsive Website Design </a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">High Security Standard</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Search engine friendly</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Website Hosting</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Quality Web Content</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Web application development</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Simple and Professional Web Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Clear, User-friendly Navigation</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Webpage Speed</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n<div class=\"ab-page-title text-center\">\r\n<h1><span>Educational Website Features</span></h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Responsive Web Design</h4>\r\n\r\n<h5>Set any Devices</h5>\r\n\r\n<p>We Develops Responsive Web Design (RWD). Our Develop Website across a wide range of devices from Desktop, Tab, Mobile Phone any web Browser.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Dynamic User Friendly</h4>\r\n\r\n<h5>Easy to use</h5>\r\n\r\n<p>Our Develop Website easy to use admin panel edits images and other contents. Take Control of your Website and publish &amp; Share your Content Easily.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Social Media Integration</h4>\r\n\r\n<h5>Facebook, Google+</h5>\r\n\r\n<p>You can easily turn your local shop or business into an online shop with the help of an eCommerce Website.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>SEO Services</h4>\r\n\r\n<h5>Search Engine Optimization</h5>\r\n\r\n<p>We enable your website Search engine optimization (SEO), social profile setup, google Business listing etc..</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Unique design</h4>\r\n\r\n<h5>Best Website Builder</h5>\r\n\r\n<p>Proficient remarkable plan having control of changing site content without IT learning.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Web Security</h4>\r\n\r\n<h5>eCommerce security</h5>\r\n\r\n<p>Our clients&rsquo; views are extremely useful in driving continual improvement for protecting website security against hackers.</p>\r\n</div>\r\n</div>', 'a:3:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:17:\"Our Pricing table\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-09 17:22:34', '2018-12-09 17:22:34'),
(36, 5, 'Portfolio Website', 'portfolio-website', NULL, 'blog-details-banner.jpg', '<h2 style=\"text-align:center\">Complete Web Solutions for Your Branding</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Dynamic Website Management Panel</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customized Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Responsive Website Design </a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">High Security Standard</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Search engine friendly</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Website Hosting</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Quality Web Content</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Web application development</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Simple and Professional Web Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Clear, User-friendly Navigation</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Webpage Speed</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n<div class=\"ab-page-title text-center\">\r\n<h1>Portfolio Website Features</h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Responsive Web Design</h4>\r\n\r\n<h5>Set any Devices</h5>\r\n\r\n<p>We Develops Responsive Web Design (RWD). Our Develop Website across a wide range of devices from Desktop, Tab, Mobile Phone any web Browser.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Dynamic User Friendly</h4>\r\n\r\n<h5>Easy to use</h5>\r\n\r\n<p>Our Develop Website easy to use admin panel edits images and other contents. Take Control of your Website and publish &amp; Share your Content Easily.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Social Media Integration</h4>\r\n\r\n<h5>Facebook, Google+</h5>\r\n\r\n<p>You can easily turn your local shop or business into an online shop with the help of an eCommerce Website.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>SEO Services</h4>\r\n\r\n<h5>Search Engine Optimization</h5>\r\n\r\n<p>We enable your website Search engine optimization (SEO), social profile setup, google Business listing etc..</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Unique design</h4>\r\n\r\n<h5>Best Website Builder</h5>\r\n\r\n<p>Proficient remarkable plan having control of changing site content without IT learning.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Web Security</h4>\r\n\r\n<h5>eCommerce security</h5>\r\n\r\n<p>Our clients&rsquo; views are extremely useful in driving continual improvement for protecting website security against hackers.</p>\r\n</div>\r\n</div>', 'a:3:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:17:\"Our Pricing table\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-09 17:25:41', '2018-12-09 17:31:53'),
(37, 5, 'Hospital Website', 'hospital-website', NULL, 'contact-us-baner_1.png', '<h2 style=\"text-align:center\">Complete Web Solutions for Your Branding</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Dynamic Website Management Panel</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Customized Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Responsive Website Design </a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">High Security Standard</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Search engine friendly</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Website Hosting</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Quality Web Content</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Web application development</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-md-4\" style=\"float: left;\">\r\n<ul>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Simple and Professional Web Design</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Clear, User-friendly Navigation</a></li>\r\n	<li><a href=\"#\" style=\"color: rgb(51, 122, 183);font-size: 15px;\">Webpage Speed</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"section-head\" style=\"font-size: 15px; margin-top: 22px;\">\r\n<div class=\"ab-page-title text-center\">\r\n<h1><span>Hospital Website Features</span></h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Responsive Web Design</h4>\r\n\r\n<h5>Set any Devices</h5>\r\n\r\n<p>We Develops Responsive Web Design (RWD). Our Develop Website across a wide range of devices from Desktop, Tab, Mobile Phone any web Browser.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Dynamic User Friendly</h4>\r\n\r\n<h5>Easy to use</h5>\r\n\r\n<p>Our Develop Website easy to use admin panel edits images and other contents. Take Control of your Website and publish &amp; Share your Content Easily.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Social Media Integration</h4>\r\n\r\n<h5>Facebook, Google+</h5>\r\n\r\n<p>You can easily turn your local shop or business into an online shop with the help of an eCommerce Website.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>SEO Services</h4>\r\n\r\n<h5>Search Engine Optimization</h5>\r\n\r\n<p>We enable your website Search engine optimization (SEO), social profile setup, google Business listing etc..</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Unique design</h4>\r\n\r\n<h5>Best Website Builder</h5>\r\n\r\n<p>Proficient remarkable plan having control of changing site content without IT learning.</p>\r\n</div>\r\n\r\n<div class=\"packageFeaturesBox\">\r\n<h4>Web Security</h4>\r\n\r\n<h5>eCommerce security</h5>\r\n\r\n<p>Our clients&rsquo; views are extremely useful in driving continual improvement for protecting website security against hackers.</p>\r\n</div>\r\n</div>', 'a:3:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";s:17:\"Our Pricing table\";s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-12-09 17:54:51', '2018-12-09 17:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `package_details`
--

CREATE TABLE `package_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `price_type` tinyint(1) DEFAULT '1',
  `sorting_position` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `words` int(11) UNSIGNED NOT NULL DEFAULT '100',
  `price` double(10,2) NOT NULL,
  `isIncluded` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_details`
--

INSERT INTO `package_details` (`id`, `package_id`, `price_type`, `sorting_position`, `title`, `words`, `price`, `isIncluded`, `details`, `created_at`, `updated_at`) VALUES
(28, 8, 5, 1, 'STARTER', 100, 249.00, 0, '[{\"basic\":\"Activities\",\"sub\":[{\"basic\":\"Total No of video per Month - 1\"}]},{\"basic\":\"Youtube\",\"sub\":[{\"basic\":\"You Tube channel Creation - Yes\"},{\"basic\":\"YouTube Channel Profile Creation - Yes\"},{\"basic\":\"Video Sharing on You Tube - 1\"},{\"basic\":\"Social Bookmarking - 25\"},{\"basic\":\"Video Likes Enhancement - 25\"},{\"basic\":\"Video Views Per Month - 50\"}]},{\"basic\":\"Daily Motion\",\"sub\":[{\"basic\":\"Daily Motion Profile Creation - Yes\"},{\"basic\":\"Daily Motion channel Creation - Yes\"},{\"basic\":\"Video Submission on Daily Motion - 1\"},{\"basic\":\"Social Bookmarking - 25\"},{\"basic\":\"Video Likes Enhancement - 25\"},{\"basic\":\"Video Views Per Month - 50\"}]}]', '2018-01-03 01:01:59', '2018-02-03 02:24:54'),
(29, 8, 5, 2, 'STANDARD', 100, 399.00, 0, '[{\"silver\":\"Activities\",\"sub\":[{\"silver\":\"Total No of video per Month - 2\"}]},{\"silver\":\"Youtube\",\"sub\":[{\"silver\":\"You Tube channel Creation - Yes\"},{\"silver\":\"YouTube Channel Profile Creation - Yes\"},{\"silver\":\"Video Sharing on You Tube - 2\"},{\"silver\":\"Social Bookmarking - 50\"},{\"silver\":\"Video Likes Enhancement - 50\"},{\"silver\":\"Video Views Per Month - 100\"}]},{\"silver\":\"Daily Motion\",\"sub\":[{\"silver\":\"Daily Motion Profile Creation - Yes\"},{\"silver\":\"Daily Motion channel Creation - Yes\"},{\"silver\":\"Video Submission on Daily Motion - 2\"},{\"silver\":\"Social Bookmarking - 50\"},{\"silver\":\"Video Likes Enhancement - 50\"},{\"silver\":\"Video Views Per Month - 100\"}]}]', '2018-01-03 01:01:59', '2018-02-03 02:24:54'),
(30, 8, 5, 3, 'ADVANCED', 100, 639.00, 0, '[{\"gold\":\"Activities\",\"sub\":[{\"gold\":\"Total No of video per Month - 3\"}]},{\"gold\":\"Youtube\",\"sub\":[{\"gold\":\"You Tube channel Creation - Yes\"},{\"gold\":\"YouTube Channel Profile Creation - Yes\"},{\"gold\":\"Video Sharing on You Tube - 3\"},{\"gold\":\"Social Bookmarking - 75\"},{\"gold\":\"Video Likes Enhancement - 75\"},{\"gold\":\"Video Views Per Month - 150\"}]},{\"gold\":\"Daily Motion\",\"sub\":[{\"gold\":\"Daily Motion Profile Creation - Yes\"},{\"gold\":\"Daily Motion channel Creation - Yes\"},{\"gold\":\"Video Submission on Daily Motion - 3\"},{\"gold\":\"Social Bookmarking - 75\"},{\"gold\":\"Video Likes Enhancement - 75\"},{\"gold\":\"Video Views Per Month - 150\"}]}]', '2018-01-03 01:01:59', '2018-02-03 02:24:54'),
(31, 8, 5, 4, 'PREMIUM', 100, 959.00, 0, '[{\"premium\":\"Activities\",\"sub\":[{\"premium\":\"Total No of video per Month - 4\"}]},{\"premium\":\"Youtube\",\"sub\":[{\"premium\":\"You Tube channel Creation - Yes\"},{\"premium\":\"YouTube Channel Profile Creation - Yes\"},{\"premium\":\"Video Sharing on You Tube - 4\"},{\"premium\":\"Social Bookmarking - 100\"},{\"premium\":\"Video Likes Enhancement - 100\"},{\"premium\":\"Video Views Per Month - 200\"}]},{\"premium\":\"Daily Motion\",\"sub\":[{\"premium\":\"Daily Motion Profile Creation - Yes\"},{\"premium\":\"Daily Motion channel Creation - Yes\"},{\"premium\":\"Video Submission on Daily Motion - 4\"},{\"premium\":\"Social Bookmarking - 100\"},{\"premium\":\"Video Likes Enhancement - 100\"},{\"premium\":\"Video Views Per Month - 200\"}]}]', '2018-01-03 01:01:59', '2018-02-03 02:24:54'),
(138, 10, 5, 1, 'SMALL', 100, 600.00, 0, '[{\"basic\":\"\",\"sub\":[{\"basic\":\"500MB Web Space\"},{\"basic\":\"5 GB Bandwidth\"},{\"basic\":\"5 MySQL Database\"}]}]', '2018-10-30 10:26:47', '2018-10-30 11:09:12'),
(139, 10, 5, 2, 'BASIC', 100, 1000.00, 0, '[{\"silver\":\"\",\"sub\":[{\"silver\":\"1GB Web Space\"},{\"silver\":\"20 GB Bandwidth\"},{\"silver\":\"10 MySQL Database\"}]}]', '2018-10-30 10:26:47', '2018-10-30 11:09:12'),
(140, 10, 5, 3, 'ADVANCED', 100, 1500.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"2GB Web Space\"},{\"gold\":\"40 GB Bandwidth\"},{\"gold\":\"20 MySQL Database\"}]}]', '2018-10-30 10:26:47', '2018-10-30 11:09:12'),
(141, 10, 5, 4, 'BUSINESS', 100, 2000.00, 0, '[{\"premium\":\"\",\"sub\":[{\"premium\":\"3GB Web Space\"},{\"premium\":\"60 GB Bandwidth\"},{\"premium\":\"Unlimited MySQL\"}]}]', '2018-10-30 10:26:47', '2018-10-30 11:09:12'),
(142, 11, 5, 1, 'Basic Package', 100, 12000.00, 0, '[{\"basic\":\"\",\"sub\":[{\"basic\":\"Free .com\\/.net\\/.org domain\"},{\"basic\":\"Free 500 MB Hosting\"},{\"basic\":\"500 MB Monthly Data Transfer\"},{\"basic\":\"10 Email address\"},{\"basic\":\"Number of Page : 12\"},{\"basic\":\"Design Concept sample: 02\"},{\"basic\":\"Flash Banner: 4 picture\"},{\"basic\":\"Unique Design\"},{\"basic\":\"Security & Maintenance\"},{\"basic\":\"Time of work : 10 working days\"}]}]', '2018-10-31 09:48:40', '2018-10-31 09:48:40'),
(143, 11, 5, 2, 'Standard Package', 100, 18000.00, 0, '[{\"silver\":\"\",\"sub\":[{\"silver\":\"Free .com\\/.net\\/.org domain\"},{\"silver\":\"Free 1 GB Hosting\"},{\"silver\":\"1 GB Monthly Data Transfer\"},{\"silver\":\"15 Email address\"},{\"silver\":\"Number of Page : 15\"},{\"silver\":\"Design Concept sample: 03\"},{\"silver\":\"Flash Banner: 6 picture\"},{\"silver\":\"Unique Design\"},{\"silver\":\"Security & Maintenance\"},{\"silver\":\"Time of work : 15 working days\"}]}]', '2018-10-31 09:48:41', '2018-10-31 09:48:41'),
(144, 11, 5, 3, 'Platinum Package', 100, 20000.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"Free .com\\/.net\\/.org domain\"},{\"gold\":\"Free 2 GB Hosting\"},{\"gold\":\"1 GB MB Monthly Data Transfer\"},{\"gold\":\"15 Email address\"},{\"gold\":\"Number of Page : 20\"},{\"gold\":\"Design Concept sample: 04\"},{\"gold\":\"Flash Banner: 6 picture\"},{\"gold\":\"Unique Design\"},{\"gold\":\"Security & Maintenance\"},{\"gold\":\"Time of work : 20 working days\"}]}]', '2018-10-31 09:48:41', '2018-10-31 09:48:41'),
(145, 12, 5, 1, 'STARTER', 100, 25.00, 0, '[{\"basic\":\"\",\"sub\":[{\"basic\":\"Page Maintain - No\"},{\"basic\":\"Page Design - No\"},{\"basic\":\"Increase Like - 500\"},{\"basic\":\"Banner Design - 0\"},{\"basic\":\"Daily Engagement - No\"},{\"basic\":\"Instagram Ad - No\"},{\"basic\":\"Video Editing - 0\"},{\"basic\":\"Page Content - No\"},{\"basic\":\"Videos Promotion - Monthly\\tQuarterly\\tWeekly\\tDaily\"},{\"basic\":\"Increase Web Traffic - No\\tYes\\tYes\\tYes\"},{\"basic\":\"Estimated Reach People - 10,000-20,000\\t20,000-50,000\\t50,000-1,00,000\\t1,00,000-2,00,000\"}]}]', '2018-10-31 10:11:55', '2018-10-31 10:25:58'),
(146, 12, 5, 2, 'STANDARD', 100, 50.00, 0, '[{\"silver\":\"\",\"sub\":[{\"silver\":\"Page Maintain - No\"},{\"silver\":\"Page Design - No\"},{\"silver\":\"Increase Like - 1000\"},{\"silver\":\"Banner Design - 0\"},{\"silver\":\"Daily Engagement - No\"},{\"silver\":\"Instagram Ad - No\"},{\"silver\":\"Video Editing - 0\"},{\"silver\":\"Page Content - No\"},{\"silver\":\"Videos Promotion - Quarterly\\tWeekly\\tDaily\"},{\"silver\":\"Increase Web Traffic - Yes\"},{\"silver\":\"Estimated Reach People -20,000-50,000\\t50,000-1,00,000\\t1,00,000-2,00,000\"}]}]', '2018-10-31 10:11:55', '2018-10-31 10:25:58'),
(147, 12, 5, 3, 'ADVANCED', 100, 100.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"Page Maintain - No\"},{\"gold\":\"Page Design - Yes\"},{\"gold\":\"Increase Like - 5000\"},{\"gold\":\"Banner Design - 10\"},{\"gold\":\"Daily Engagement - Yes\"},{\"gold\":\"Instagram Ad - Yes\"},{\"gold\":\"Video Editing - 2\"},{\"gold\":\"Page Content - Weekly\"},{\"gold\":\"Videos Promotion - Weekly\\tDaily\"},{\"gold\":\"Increase Web Traffic - Yes\"},{\"gold\":\"Estimated Reach People - 50,000-1,00,000\\t1,00,000-2,00,000\"}]}]', '2018-10-31 10:11:55', '2018-10-31 10:25:58'),
(148, 12, 5, 4, 'PREMIUM', 100, 200.00, 0, '[{\"premium\":\"\",\"sub\":[{\"premium\":\"Page Maintain - No\"},{\"premium\":\"Page Design - Yes\"},{\"premium\":\"Increase Like - 10000\"},{\"premium\":\"Banner Design - 20\"},{\"premium\":\"Daily Engagement - Yes\"},{\"premium\":\"Instagram Ad - Yes\"},{\"premium\":\"Video Editing - 5\"},{\"premium\":\"Page Content - Daily\"},{\"premium\":\"Videos Promotion - Daily\"},{\"premium\":\"Increase Web Traffic - Yes\"},{\"premium\":\"Estimated Reach People - 1,00,000-2,00,000\"}]}]', '2018-10-31 10:11:55', '2018-10-31 10:25:58'),
(149, 13, 5, 1, 'Initial Package', 100, 300.00, 0, '[{\"basic\":\"\",\"sub\":[{\"basic\":\"Single Domain\"},{\"basic\":\"100 Mb Disk Space\"},{\"basic\":\"5000 Mb monthly Data Transfer\"},{\"basic\":\"10 Email Accounts\"},{\"basic\":\"10 mysql DB\"},{\"basic\":\"10 subdomain\"},{\"basic\":\"Latest CPanel\"}]},{\"basic\":\"Pro Corporate Package\",\"sub\":[{\"basic\":\"Single Domain\"},{\"basic\":\"2000 Mb Disk Space\"},{\"basic\":\"5000 Mb monthly Data Transfer\"},{\"basic\":\"50 Email Accounts\"},{\"basic\":\"50 mysql DB\"},{\"basic\":\"50 subdomain\"},{\"basic\":\"Latest CPanel\"}]}]', '2018-10-31 10:30:50', '2018-10-31 10:42:56'),
(150, 13, 5, 2, 'Business Package', 100, 350.00, 0, '[{\"silver\":\"\",\"sub\":[{\"silver\":\"Single Domain\"},{\"silver\":\"500 Mb Disk Space\"},{\"silver\":\"10000 monthly Data Transfer\"},{\"silver\":\"20 Email Accounts\"},{\"silver\":\"15 mysql DB\"},{\"silver\":\"20 subdomain\"},{\"silver\":\"Latest CPanel\"}]},{\"silver\":\"Premium Package\",\"sub\":[{\"silver\":\"Single Domain\"},{\"silver\":\"5000 Mb Disk Space\"},{\"silver\":\"10000 Mb monthly Data Transfer\"},{\"silver\":\"50 Email Accounts\"},{\"silver\":\"50 mysql DB\"},{\"silver\":\"50 subdomain\"},{\"silver\":\"Latest CPanel\"}]}]', '2018-10-31 10:30:50', '2018-10-31 10:42:56'),
(151, 13, 5, 3, 'Corporate Package', 100, 400.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"Single Domain\"},{\"gold\":\"1000 Mb Disk Space\"},{\"gold\":\"10000 Mb monthly Data Transfer\"},{\"gold\":\"30 Email Accounts\"},{\"gold\":\"20 mysql DB\"},{\"gold\":\"25 subdomain\"},{\"gold\":\"Latest CPanel\"}]},{\"gold\":\"Platinum Package\",\"sub\":[{\"gold\":\"Single Domain\"},{\"gold\":\"10000 Mb Disk Space\"},{\"gold\":\"100000 Mb monthly Data Transfer\"},{\"gold\":\"Unlimited Email Accounts\"},{\"gold\":\"Unlimited mysql DB\"},{\"gold\":\"Unlimited subdomain\"},{\"gold\":\"Latest CPanel\"}]}]', '2018-10-31 10:30:50', '2018-10-31 10:42:56'),
(173, 16, 8, 1, 'PLAN 1', 100, 1000.00, 0, '[{\"plan1\":\"\",\"sub\":[{\"plan1\":\"500 MB SSD Storage\\n\"},{\"plan1\":\"15 GB Bandwidth Monthly\\n\"},{\"plan1\":\"RAID 10 SSD Server\"},{\"plan1\":\"LiteSpeed Web Server\"},{\"plan1\":\"No Addon Domain\"},{\"plan1\":\"FREE SSL Life Time\"},{\"plan1\":\"FREE Weekly Backup\"},{\"plan1\":\"Unlimited Sub Domains\"},{\"plan1\":\"Unlimited Email Accounts\"},{\"plan1\":\"Unlimited Databases\"}]}]', '2018-12-05 19:46:00', '2018-12-09 00:11:44'),
(174, 16, 8, 2, 'PLAN 2', 100, 1500.00, 0, '[{\"plan2\":\"\",\"sub\":[{\"plan2\":\"1 GB SSD Storage\\n\\n\"},{\"plan2\":\"30 GB Bandwidth Monthly\\n\"},{\"plan2\":\"RAID 10 SSD Server\"},{\"plan2\":\"LiteSpeed Web Server\"},{\"plan2\":\"One Addon Domain\"},{\"plan2\":\"FREE SSL Life Time\"},{\"plan2\":\"FREE Weekly Backup\"},{\"plan2\":\"Unlimited Sub Domains\"},{\"plan2\":\"Unlimited Email Accounts\"},{\"plan2\":\"Unlimited Databases\"}]}]', '2018-12-05 19:46:00', '2018-12-09 00:11:44'),
(175, 16, 8, 3, 'PLAN 3', 100, 2000.00, 0, '[{\"plan3\":\"\",\"sub\":[{\"plan3\":\"2 GB SSD Storage\\n\"},{\"plan3\":\"60 GB Bandwidth Monthly\"},{\"plan3\":\"RAID 10 SSD Server\"},{\"plan3\":\"LiteSpeed Web Server\"},{\"plan3\":\"Two Addon Domain\"},{\"plan3\":\"FREE SSL Life Time\"},{\"plan3\":\"FREE Weekly Backup\"},{\"plan3\":\"Unlimited Sub Domains\"},{\"plan3\":\"Unlimited Email Accounts\"},{\"plan3\":\"Unlimited Databases\"}]}]', '2018-12-05 19:46:00', '2018-12-09 00:11:44'),
(176, 16, 8, 4, 'PLAN 4', 100, 2500.00, 0, '[{\"plan4\":\"\\n\",\"sub\":[{\"plan4\":\"3 GB SSD Storage\"},{\"plan4\":\"90 GB Bandwidth Monthly\\n\"},{\"plan4\":\"RAID 10 SSD Server\"},{\"plan4\":\"LiteSpeed Web Server\"},{\"plan4\":\"Three Addon Domain\"},{\"plan4\":\"FREE SSL Life Time\"},{\"plan4\":\"FREE Weekly Backup\"},{\"plan4\":\"Unlimited Sub Domains\"},{\"plan4\":\"Unlimited Email Accounts\"},{\"plan4\":\"Unlimited Databases\"}]}]', '2018-12-05 19:46:00', '2018-12-09 00:11:44'),
(177, 16, 8, 5, 'PLAN 5', 100, 3000.00, 0, '[{\"plan5\":\"\",\"sub\":[{\"plan5\":\"4 GB SSD Storage\"},{\"plan5\":\"120 GB Bandwidth Monthly\\n\"},{\"plan5\":\"RAID 10 SSD Server\"},{\"plan5\":\"LiteSpeed Web Server\"},{\"plan5\":\"Four Addon Domain\"},{\"plan5\":\"FREE SSL Life Time\"},{\"plan5\":\"FREE Weekly Backup\"},{\"plan5\":\"Unlimited Sub Domains\"},{\"plan5\":\"Unlimited Email Accounts\"},{\"plan5\":\"Unlimited Databases\"}]}]', '2018-12-05 19:46:00', '2018-12-09 00:11:44'),
(178, 16, 8, 6, 'PLAN 6', 100, 3500.00, 0, '[{\"plan6\":\"\",\"sub\":[{\"plan6\":\"5 GB SSD Storage\\n\"},{\"plan6\":\"150 GB Bandwidth Monthly\"},{\"plan6\":\"RAID 10 SSD Server\"},{\"plan6\":\"LiteSpeed Web Server\"},{\"plan6\":\"Five Addon Domains\"},{\"plan6\":\"FREE SSL Life Time\"},{\"plan6\":\"FREE Weekly Backup\"},{\"plan6\":\"Unlimited Sub Domains\"},{\"plan6\":\"Unlimited Email Accounts\"},{\"plan6\":\"Unlimited Databases\"}]}]', '2018-12-05 19:46:00', '2018-12-09 00:11:44'),
(179, 16, 8, 7, 'PLAN 7', 100, 5000.00, 0, '[{\"plan7\":\"\\n\",\"sub\":[{\"plan7\":\"10 GB SSD Storage\\n\"},{\"plan7\":\"300 GB Bandwidth Monthly\\n\"},{\"plan7\":\"RAID 10 SSD Server\"},{\"plan7\":\"LiteSpeed Web Server\"},{\"plan7\":\"Six Addon Domains\"},{\"plan7\":\"FREE SSL Life Time\"},{\"plan7\":\"FREE Weekly Backup\"},{\"plan7\":\"Unlimited Sub Domains\"},{\"plan7\":\"Unlimited Email Accounts\"},{\"plan7\":\"Unlimited Databases\"}]}]', '2018-12-05 19:46:00', '2018-12-09 00:11:44'),
(180, 16, 8, 8, 'PLAN 8', 100, 10000.00, 0, '[{\"plan8\":\"\\n\",\"sub\":[{\"plan8\":\"20 GB SSD Storage\\n\"},{\"plan8\":\"500 GB Bandwidth Monthly\"},{\"plan8\":\"RAID 10 SSD Server\"},{\"plan8\":\"LiteSpeed Web Server\"},{\"plan8\":\"Nine Addon Domains\"},{\"plan8\":\"FREE SSL Life Time\"},{\"plan8\":\"FREE Weekly Backup\"},{\"plan8\":\"Unlimited Sub Domains\"},{\"plan8\":\"Unlimited Email Accounts\"},{\"plan8\":\"Unlimited Databases\"}]}]', '2018-12-05 19:46:00', '2018-12-09 00:11:44'),
(181, 17, 5, 1, 'BASIC', 100, 15000.00, 0, '[{\"pricing_info_title\":\"Keywords Plan\",\"basic\":\"5\"},{\"pricing_info_title\":\"Keywords Top 10 Guarantee*\",\"basic\":\"3\"},{\"pricing_info_title\":\"In-Depth Site Analysis\",\"basic\":\"Yes\"},{\"pricing_info_title\":\"Duplicate Content Check\",\"basic\":\"Yes\"},{\"pricing_info_title\":\"Competition Analysis\",\"basic\":\"Yes\"},{\"pricing_info_title\":\"Keyword Analysis\\t\",\"basic\":\"Yes\"},{\"pricing_info_title\":\"Baseline Ranking Check\",\"basic\":\"Yes\"},{\"pricing_info_title\":\"Keyword URL Mapping\",\"basic\":\"Yes\"},{\"pricing_info_title\":\"Title & Meta Tags Optimization\",\"basic\":\"Upto 10 Pages\"}]', '2018-12-05 21:56:05', '2018-12-05 22:46:37'),
(182, 17, 5, 2, 'SILVER', 100, 28000.00, 0, '[{\"pricing_info_title\":\"Keywords Plan\",\"silver\":\"20\"},{\"pricing_info_title\":\"Keywords Top 10 Guarantee*\",\"silver\":\"10\"},{\"pricing_info_title\":\"In-Depth Site Analysis\",\"silver\":\"Yes\"},{\"pricing_info_title\":\"Duplicate Content Check\",\"silver\":\"Yes\"},{\"pricing_info_title\":\"Competition Analysis\",\"silver\":\"Yes\"},{\"pricing_info_title\":\"Keyword Analysis\\t\",\"silver\":\"Yes\"},{\"pricing_info_title\":\"Baseline Ranking Check\",\"silver\":\"Yes\"},{\"pricing_info_title\":\"Keyword URL Mapping\",\"silver\":\"Yes\"},{\"pricing_info_title\":\"Title & Meta Tags Optimization\",\"silver\":\"Upto 20 Pages\"}]', '2018-12-05 21:56:05', '2018-12-05 22:46:37'),
(183, 17, 5, 3, 'GOLD', 100, 45000.00, 0, '[{\"pricing_info_title\":\"Keywords Plan\",\"gold\":\"40\"},{\"pricing_info_title\":\"Keywords Top 10 Guarantee*\",\"gold\":\"20\"},{\"pricing_info_title\":\"In-Depth Site Analysis\",\"gold\":\"Yes\"},{\"pricing_info_title\":\"Duplicate Content Check\",\"gold\":\"Yes\"},{\"pricing_info_title\":\"Competition Analysis\",\"gold\":\"Yes\"},{\"pricing_info_title\":\"Keyword Analysis\\t\",\"gold\":\"Yes\"},{\"pricing_info_title\":\"Baseline Ranking Check\",\"gold\":\"Yes\"},{\"pricing_info_title\":\"Keyword URL Mapping\",\"gold\":\"Yes\"},{\"pricing_info_title\":\"Title & Meta Tags Optimization\",\"gold\":\"Upto 40 Pages\"}]', '2018-12-05 21:56:05', '2018-12-05 22:46:37'),
(187, 20, 5, 1, 'BASIC', 100, 15000.00, 0, '[{\"pricing_info_title\":\"SMS Marketing\",\"basic\":\"25000\"},{\"pricing_info_title\":\"Email Marketing\",\"basic\":\"50000\"},{\"pricing_info_title\":\"Facebook Advertisement\",\"basic\":\"$30\"},{\"pricing_info_title\":\"Google & Youtube Promotion\",\"basic\":\"$20\"},{\"pricing_info_title\":\"SEO\",\"basic\":\"1 keyword\"}]', '2018-12-05 23:13:42', '2018-12-05 23:15:54'),
(188, 20, 5, 2, 'SILVER', 100, 30000.00, 0, '[{\"pricing_info_title\":\"SMS Marketing\",\"silver\":\"60000\"},{\"pricing_info_title\":\"Email Marketing\",\"silver\":\"100000\"},{\"pricing_info_title\":\"Facebook Advertisement\",\"silver\":\"$50\"},{\"pricing_info_title\":\"Google & Youtube Promotion\",\"silver\":\"$50\"},{\"pricing_info_title\":\"SEO\",\"silver\":\"2 keyword\"}]', '2018-12-05 23:13:42', '2018-12-05 23:15:54'),
(189, 20, 5, 3, 'GOLD', 100, 50000.00, 0, '[{\"pricing_info_title\":\"SMS Marketing\",\"gold\":\"150000\"},{\"pricing_info_title\":\"Email Marketing\",\"gold\":\"300000\"},{\"pricing_info_title\":\"Facebook Advertisement\",\"gold\":\"$50\"},{\"pricing_info_title\":\"Google & Youtube Promotion\",\"gold\":\"$50\"},{\"pricing_info_title\":\"SEO\",\"gold\":\"5 keyword\"}]', '2018-12-05 23:13:42', '2018-12-05 23:15:54'),
(190, 21, 5, 1, 'Min. Years', 100, 0.00, 0, '[{\"particular_title\":\".com\",\"advanced\":\"1 Year\"},{\"particular_title\":\".info\",\"advanced\":\"1 Year\"},{\"particular_title\":\".net\",\"advanced\":\"1 Year\"},{\"particular_title\":\".org\",\"advanced\":\"1 Year\"},{\"particular_title\":\".biz\",\"advanced\":\"1 Year\"},{\"particular_title\":\".xyz\",\"advanced\":\"1 Year\"},{\"particular_title\":\".com.bd\",\"advanced\":\"1 Year\"}]', '2018-12-05 23:22:29', '2018-12-09 00:07:34'),
(191, 21, 5, 2, 'Corporate Domain*', 100, 0.00, 0, '[{\"particular_title\":\".com\",\"professional\":\"BDT 1000\"},{\"particular_title\":\".info\",\"professional\":\"BDT 1000\"},{\"particular_title\":\".net\",\"professional\":\"BDT 1000\"},{\"particular_title\":\".org\",\"professional\":\"BDT 1000\"},{\"particular_title\":\".biz\",\"professional\":\"BDT 1000\"},{\"particular_title\":\".xyz\",\"professional\":\"BDT 1000\"},{\"particular_title\":\".com.bd\",\"professional\":\"BDT 1000\"}]', '2018-12-05 23:22:29', '2018-12-09 00:07:34'),
(192, 22, 5, 1, 'Price(One Time)', 100, 0.00, 0, '[{\"particular_title\":\"1-10 User\",\"advanced\":\"1,20,000\\/=\"},{\"particular_title\":\"11-20 User\",\"advanced\":\"1,50,000\\/=\"},{\"particular_title\":\"21-30 User\",\"advanced\":\"1,80,000\\/=\"},{\"particular_title\":\"31-40 User\",\"advanced\":\"\\t2,00,000\\/=\"},{\"particular_title\":\"Unlimited User\",\"advanced\":\"2,50,000\\/=\"}]', '2018-12-05 23:53:01', '2018-12-05 23:53:01'),
(193, 22, 5, 2, 'Monthly Service Charge (After 3 month)', 100, 0.00, 0, '[{\"particular_title\":\"1-10 User\",\"professional\":\"4000 Taka\"},{\"particular_title\":\"11-20 User\",\"professional\":\"5000 Taka\"},{\"particular_title\":\"21-30 User\",\"professional\":\"8000 Taka\"},{\"particular_title\":\"31-40 User\",\"professional\":\"15000 Taka\"},{\"particular_title\":\"Unlimited User\",\"professional\":\"25000 Taka\"}]', '2018-12-05 23:53:01', '2018-12-05 23:53:01'),
(194, 23, 1, 1, 'STARTER', 100, 15000.00, 0, '[{\"basic\":\"Yearly Renew Fee \\u09f3 4,000\",\"sub\":[{\"basic\":\"<strong>2000 MB Hosting<\\/strong> &amp; Domain Name\"},{\"basic\":\"<strong>Customize<\\/strong> Admin Panel &amp; Easy to Use\"},{\"basic\":\"Multiple Image Option\"},{\"basic\":\"<strong>03<\\/strong> Step Product Category\"},{\"basic\":\"<strong>Payment<\\/strong> Cash On Delivery\"},{\"basic\":\"<strong>2<\\/strong> Customize page\"},{\"basic\":\"<strong>5<\\/strong> Normal Of Page\"},{\"basic\":\"<strong>15 <\\/strong> WebMail ID\"}]}]', '2018-12-06 18:00:04', '2018-12-08 17:12:07'),
(195, 23, 1, 2, 'STANDARD', 100, 35000.00, 0, '[{\"silver\":\"Yearly Renew Fee \\u09f3 6,000\",\"sub\":[{\"silver\":\"<strong>4000 MB Hosting<\\/strong> &amp; Domain Name\"},{\"silver\":\"<strong>Customize<\\/strong> Admin Panel &amp; Easy to Use\"},{\"silver\":\"Multiple Image Option\"},{\"silver\":\"<strong>04<\\/strong> Step Product Category\"},{\"silver\":\"<strong>Payment<\\/strong> Cash on delivery, bKash\"},{\"silver\":\"<strong>5<\\/strong> Customize page\"},{\"silver\":\"<strong>10<\\/strong> Normal Of Page\"},{\"silver\":\"<strong>25 <\\/strong> WebMail ID\"}]}]', '2018-12-06 18:00:04', '2018-12-08 17:12:07'),
(196, 23, 1, 3, 'ADVANCED', 100, 55000.00, 0, '[{\"gold\":\"Yearly Renew Fee \\u09f3 8,000\",\"sub\":[{\"gold\":\"<strong>8000 MB Hosting<\\/strong> &amp; Domain Name\"},{\"gold\":\"<strong>Customize<\\/strong> Admin Panel &amp; Easy to Use\"},{\"gold\":\"Multiple Image Option\"},{\"gold\":\"<strong>05<\\/strong> Step Product Category\"},{\"gold\":\"<strong>Payment<\\/strong> COD, bKash, Credit Card\"},{\"gold\":\"<strong>Yes<\\/strong> Mobile Apps for android\"},{\"gold\":\"<strong>10<\\/strong> Normal Of Page\"},{\"gold\":\"<strong>40 <\\/strong> WebMail ID\"}]}]', '2018-12-06 18:00:04', '2018-12-08 17:12:07'),
(197, 23, 1, 4, 'PREMIUM', 100, 85000.00, 0, '[{\"premium\":\"Yearly Renew Fee \\u09f3 12,000\",\"sub\":[{\"premium\":\" <strong>15000 MB Hosting<\\/strong> &amp; Domain Name\"},{\"premium\":\"<strong>Customize<\\/strong> Admin Panel &amp; Easy to Use\"},{\"premium\":\"Multiple Image Option\"},{\"premium\":\"<strong>05<\\/strong> Step Product Category\"},{\"premium\":\"<strong>Payment<\\/strong> COD, bKash, Credit Card\"},{\"premium\":\"<strong>Yes<\\/strong> Mobile Apps for android\"},{\"premium\":\"<strong>15<\\/strong> Normal Of Page\"},{\"premium\":\"<strong>100 <\\/strong> WebMail ID\"}]}]', '2018-12-06 18:00:04', '2018-12-08 17:12:07'),
(200, 24, 1, 1, 'STARTER', 100, 15000.00, 0, '[{\"basic\":\"Monthly Service Cost \\u09f3 500\",\"sub\":[{\"basic\":\"Single Branch\"},{\"basic\":\"2 user\"}]}]', '2018-12-08 19:33:04', '2018-12-08 19:34:22'),
(201, 24, 1, 2, 'STANDARD', 100, 20000.00, 0, '[{\"silver\":\"Monthly Service Cost \\u09f3 800\",\"sub\":[{\"silver\":\"Single Branch\"},{\"silver\":\"6 user\"}]}]', '2018-12-08 19:33:04', '2018-12-08 19:34:22'),
(202, 24, 1, 3, 'ADVANCED', 100, 35000.00, 0, '[{\"gold\":\"Monthly Service Cost \\u09f3 1,200\",\"sub\":[{\"gold\":\"02 Branch\"},{\"gold\":\"8 user\"}]}]', '2018-12-08 19:33:04', '2018-12-08 19:34:22'),
(203, 24, 1, 4, 'PREMIUM', 100, 50000.00, 0, '[{\"premium\":\"Monthly Service Cost \\u09f3 2,500\",\"sub\":[{\"premium\":\"Multiple Branch\"},{\"premium\":\"Unlimited user\"}]}]', '2018-12-08 19:33:04', '2018-12-08 19:34:22'),
(204, 25, 5, 1, 'STARTER', 100, 25000.00, 0, '[{\"basic\":\"Monthly Service Cost \\u09f3 500\",\"sub\":[{\"basic\":\"Single Branch\"},{\"basic\":\"2 user\"}]}]', '2018-12-08 20:31:38', '2018-12-08 20:31:38'),
(205, 25, 5, 2, 'STANDARD', 100, 25000.00, 0, '[{\"silver\":\"Monthly Service Cost \\u09f3 800\",\"sub\":[{\"silver\":\"Single Branch\"},{\"silver\":\"6 user\"}]}]', '2018-12-08 20:31:38', '2018-12-08 20:31:38'),
(206, 25, 5, 3, 'ADVANCED', 100, 30000.00, 0, '[{\"gold\":\"Monthly Service Cost \\u09f3 1,200\",\"sub\":[{\"gold\":\"02 Branch\"},{\"gold\":\"8 user\"}]}]', '2018-12-08 20:31:38', '2018-12-08 20:31:38'),
(207, 25, 5, 4, 'PREMIUM', 100, 50000.00, 0, '[{\"premium\":\"Monthly Service Cost \\u09f3 2,500\",\"sub\":[{\"premium\":\"Multiple Branch\"},{\"premium\":\"Unlimited user\"}]}]', '2018-12-08 20:31:38', '2018-12-08 20:31:38'),
(208, 26, 5, 1, 'STARTER', 100, 15000.00, 0, '[{\"basic\":\"Monthly Service Cost \\u09f3 500\",\"sub\":[{\"basic\":\"Single Branch\"},{\"basic\":\"2 user\"}]}]', '2018-12-08 20:45:21', '2018-12-08 20:45:21'),
(209, 26, 5, 2, 'STANDARD', 100, 25000.00, 0, '[{\"silver\":\"Monthly Service Cost \\u09f3 8500\",\"sub\":[{\"silver\":\"Single Branch\"},{\"silver\":\"6 user\"}]}]', '2018-12-08 20:45:21', '2018-12-08 20:45:21'),
(210, 26, 5, 3, 'ADVANCED', 100, 35000.00, 0, '[{\"gold\":\"Monthly Service Cost \\u09f3 1,200\",\"sub\":[{\"gold\":\"02 Branch\"},{\"gold\":\"8 user\"}]}]', '2018-12-08 20:45:21', '2018-12-08 20:45:21'),
(211, 26, 5, 4, 'PREMIUM', 100, 50000.00, 0, '[{\"premium\":\"Monthly Service Cost \\u09f3 2,500\",\"sub\":[{\"premium\":\"Multiple Branch\"},{\"premium\":\"Unlimited user\"}]}]', '2018-12-08 20:45:21', '2018-12-08 20:45:21'),
(212, 27, 5, 1, 'STARTER', 100, 10000.00, 0, '[{\"basic\":\"\",\"sub\":[{\"basic\":\"Student Quantity 100-250\"}]}]', '2018-12-08 21:56:43', '2018-12-08 21:59:13'),
(213, 27, 5, 2, 'STANDARD', 100, 10000.00, 0, '[{\"silver\":\"\",\"sub\":[{\"silver\":\"Student Quantity 250-400\"}]}]', '2018-12-08 21:56:43', '2018-12-08 21:59:13'),
(214, 27, 5, 3, 'ADVANCED', 100, 10000.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"Student Quantity 400-600\"}]}]', '2018-12-08 21:56:43', '2018-12-08 21:59:13'),
(215, 27, 5, 4, 'PREMIUM', 100, 10000.00, 0, '[{\"premium\":\"\",\"sub\":[{\"premium\":\"Student Quantity 600-800\"}]}]', '2018-12-08 21:56:43', '2018-12-08 21:59:13'),
(216, 28, 5, 1, 'STARTER', 100, 15000.00, 0, '[{\"basic\":\"\",\"sub\":[{\"basic\":\"Single Branch\"},{\"basic\":\"2 user\"}]}]', '2018-12-08 22:12:22', '2018-12-08 22:12:22'),
(217, 28, 5, 2, 'STANDARD', 100, 20000.00, 0, '[{\"silver\":\"\",\"sub\":[{\"silver\":\"Single Branch\"},{\"silver\":\" 6 user\"}]}]', '2018-12-08 22:12:22', '2018-12-08 22:12:22'),
(218, 28, 5, 3, 'ADVANCED', 100, 30000.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"02 Branch\"},{\"gold\":\"8 user\"}]}]', '2018-12-08 22:12:22', '2018-12-08 22:12:22'),
(219, 28, 5, 4, 'PREMIUM', 100, 50000.00, 0, '[{\"premium\":\"\",\"sub\":[{\"premium\":\"Multiple Branch\"},{\"premium\":\"Unlimited user\"}]}]', '2018-12-08 22:12:22', '2018-12-08 22:12:22'),
(222, 29, 5, 1, 'STARTER', 100, 0.00, 0, '[]', '2018-12-08 22:27:21', '2018-12-08 22:27:21'),
(223, 29, 5, 2, 'STANDARD', 100, 0.00, 0, '[]', '2018-12-08 22:27:21', '2018-12-08 22:27:21'),
(224, 29, 5, 3, 'ADVANCED', 100, 0.00, 0, '[]', '2018-12-08 22:27:21', '2018-12-08 22:27:21'),
(225, 30, 5, 1, 'STARTER', 100, 0.00, 0, '[]', '2018-12-08 22:31:06', '2018-12-08 22:31:06'),
(226, 30, 5, 2, 'STANDARD', 100, 0.00, 0, '[]', '2018-12-08 22:31:06', '2018-12-08 22:31:06'),
(227, 30, 5, 3, 'ADVANCED', 100, 0.00, 0, '[]', '2018-12-08 22:31:06', '2018-12-08 22:31:06'),
(228, 31, 5, 1, 'STARTER', 100, 3200.00, 0, '[{\"basic\":\"5K MAIL SENDING PER DAY\",\"sub\":[{\"basic\":\"5k mail sending per Day\"}]}]', '2018-12-09 00:17:07', '2018-12-09 00:17:07'),
(229, 31, 5, 2, 'STANDARD', 100, 6200.00, 0, '[{\"silver\":\"10K MAIL SENDING PER DAY\",\"sub\":[{\"silver\":\"10k mail sending per Day\"}]}]', '2018-12-09 00:17:07', '2018-12-09 00:17:07'),
(230, 31, 5, 3, 'ADVANCED', 100, 8200.00, 0, '[{\"gold\":\"15K MAIL SENDING PER DAY\",\"sub\":[{\"gold\":\"15k mail sending per Day\"}]}]', '2018-12-09 00:17:07', '2018-12-09 00:17:07'),
(231, 31, 5, 4, 'PREMIUM', 100, 10200.00, 0, '[{\"premium\":\"20K MAIL SENDING PER DAY\",\"sub\":[{\"premium\":\"20k mail sending per Day\"}]}]', '2018-12-09 00:17:07', '2018-12-09 00:17:07'),
(232, 32, 1, 1, 'STARTER', 100, 12000.00, 0, '[{\"basic\":\"Renewal Fees(Yearly): 5000 Tk\",\"sub\":[{\"basic\":\"Responsive Design\"},{\"basic\":\"Basic Information Pages\"},{\"basic\":\"Contact Form\"},{\"basic\":\"Fast loading\"},{\"basic\":\"Social media integration\"},{\"basic\":\"Easy to Update\"},{\"basic\":\"Affordable to improve\"},{\"basic\":\"Security Features\"},{\"basic\":\"Slider: 5 Sliders\"},{\"basic\":\"Pages: Unlimited\"},{\"basic\":\"Design: 3 Sample Design\"}]}]', '2018-12-09 17:13:56', '2018-12-09 17:33:37'),
(233, 32, 1, 2, 'STANDARD', 100, 20000.00, 0, '[{\"silver\":\"Renewal Fees(Yearly): 5000 Tk\",\"sub\":[{\"silver\":\"Responsive Design\"},{\"silver\":\"Basic Information Pages\"},{\"silver\":\"Contact Form\"},{\"silver\":\"Fast loading\"},{\"silver\":\"Social media integration\"},{\"silver\":\"Easy to Update\"},{\"silver\":\"Affordable to improve\"},{\"silver\":\"Security Features\"},{\"silver\":\"Slider: 10 Sliders\"},{\"silver\":\"Pages: Unlimited\"},{\"silver\":\"Design: 5 Sample Design\"}]}]', '2018-12-09 17:13:56', '2018-12-09 17:33:37'),
(234, 32, 1, 3, 'ADVANCED', 100, 25000.00, 0, '[{\"gold\":\"Renewal Fees(Yearly): 5000 Tk\",\"sub\":[{\"gold\":\"Responsive Design\"},{\"gold\":\"Basic Information Pages\"},{\"gold\":\"Contact Form\"},{\"gold\":\"Fast loading\"},{\"gold\":\"Social media integration\"},{\"gold\":\"Easy to Update\"},{\"gold\":\"Affordable to improve\"},{\"gold\":\"Security Features\"},{\"gold\":\"Slider: Unlimited Sliders\"},{\"gold\":\"Pages: Unlimited\"},{\"gold\":\"Design: 5 Sample Design\"}]}]', '2018-12-09 17:13:56', '2018-12-09 17:33:37'),
(235, 33, 5, 1, 'STARTER', 100, 15000.00, 0, '[{\"basic\":\"\",\"sub\":[{\"basic\":\"Responsive Design\"},{\"basic\":\"Modern & Clean Interface\"},{\"basic\":\"Breaking News\"},{\"basic\":\"Multi-column Layout\"},{\"basic\":\" Functional Sidebar\"},{\"basic\":\"Frequent Content Updates\"},{\"basic\":\" Social Media Integration\"},{\"basic\":\"Security Features\"}]}]', '2018-12-09 17:17:05', '2018-12-09 17:17:05'),
(236, 33, 5, 2, 'STANDARD', 100, 20000.00, 0, '[{\"silver\":\"\",\"sub\":[{\"silver\":\"Responsive Design\"},{\"silver\":\"Modern & Clean Interface\"},{\"silver\":\"Breaking News\"},{\"silver\":\"Multi-column Layout\"},{\"silver\":\" Functional Sidebar\"},{\"silver\":\"Frequent Content Updates\"},{\"silver\":\" Social Media Integration\"},{\"silver\":\"Security Features\"}]}]', '2018-12-09 17:17:05', '2018-12-09 17:17:05'),
(237, 33, 5, 3, 'ADVANCED', 100, 25000.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"Responsive Design\"},{\"gold\":\"Modern & Clean Interface\"},{\"gold\":\"Breaking News\"},{\"gold\":\"Multi-column Layout\"},{\"gold\":\" Functional Sidebar\"},{\"gold\":\"Frequent Content Updates\"},{\"gold\":\" Social Media Integration\"},{\"gold\":\"Security Features\"}]}]', '2018-12-09 17:17:05', '2018-12-09 17:17:05'),
(238, 34, 5, 1, 'STARTER', 100, 15000.00, 0, '[{\"basic\":\"\",\"sub\":[{\"basic\":\"Responsive Design\"},{\"basic\":\"Basic Information Pages\"},{\"basic\":\"Contact Form\"},{\"basic\":\"Blog Post Archive\"},{\"basic\":\"Comment System\"},{\"basic\":\"Beginner Friendly\"},{\"basic\":\"Social Media Integration\"},{\"basic\":\"Security Features\"}]}]', '2018-12-09 17:19:57', '2018-12-09 17:19:57'),
(239, 34, 5, 2, 'STANDARD', 100, 20000.00, 0, '[{\"silver\":\"\",\"sub\":[{\"silver\":\"Responsive Design\"},{\"silver\":\"Basic Information Pages\"},{\"silver\":\"Contact Form\"},{\"silver\":\"Blog Post Archive\"},{\"silver\":\"Comment System\"},{\"silver\":\"Beginner Friendly\"},{\"silver\":\"Social Media Integration\"},{\"silver\":\"Security Features\"}]}]', '2018-12-09 17:19:57', '2018-12-09 17:19:57'),
(240, 34, 5, 3, 'ADVANCED', 100, 25000.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"Responsive Design\"},{\"gold\":\"Basic Information Pages\"},{\"gold\":\"Contact Form\"},{\"gold\":\"Blog Post Archive\"},{\"gold\":\"Comment System\"},{\"gold\":\"Beginner Friendly\"},{\"gold\":\"Social Media Integration\"},{\"gold\":\"Security Features\"}]}]', '2018-12-09 17:19:57', '2018-12-09 17:19:57'),
(241, 35, 5, 1, 'STARTER', 100, 10000.00, 0, '[{\"basic\":\"\",\"sub\":[{\"basic\":\"Responsive Design\"},{\"basic\":\" Contact Form\\n\"},{\"basic\":\"Powerful CMS\"},{\"basic\":\"Powerful Calendar\"},{\"basic\":\"Powerful Database\"},{\"basic\":\"Dynamic Notice Board\"},{\"basic\":\"Security Features\"}]}]', '2018-12-09 17:22:34', '2018-12-09 17:22:34'),
(242, 35, 5, 2, 'STANDARD', 100, 15000.00, 0, '[{\"silver\":\"\",\"sub\":[{\"silver\":\"Basic Information Pages\"},{\"silver\":\" Contact Form\\n\"},{\"silver\":\"Powerful CMS\"},{\"silver\":\"Powerful Calendar\"},{\"silver\":\"Powerful Database\"},{\"silver\":\"Dynamic Notice Board\"},{\"silver\":\"Security Features\"}]}]', '2018-12-09 17:22:34', '2018-12-09 17:22:34'),
(243, 35, 5, 3, 'ADVANCED', 100, 20000.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"Basic Information Pages\"},{\"gold\":\" Contact Form\\n\"},{\"gold\":\"Powerful CMS\"},{\"gold\":\"Powerful Calendar\"},{\"gold\":\"Powerful Database\"},{\"gold\":\"Dynamic Notice Board\"},{\"gold\":\"Security Features\"}]}]', '2018-12-09 17:22:34', '2018-12-09 17:22:34'),
(244, 36, 5, 1, 'STARTER', 100, 10000.00, 0, '[{\"basic\":\"\",\"sub\":[{\"basic\":\"Responsive Design\"},{\"basic\":\"Basic Information Pages\"},{\"basic\":\"Contact Form\"},{\"basic\":\"Service Page(s)\"},{\"basic\":\"Social Media Integration\"},{\"basic\":\"Development Time: 15 Days\"},{\"basic\":\"Project Gallery\"},{\"basic\":\"Blog Setup\"},{\"basic\":\"Security Features\"},{\"basic\":\"SEO: On-Page SEO\"}]}]', '2018-12-09 17:25:41', '2018-12-09 17:31:53'),
(245, 36, 5, 2, 'STANDARD', 100, 15000.00, 0, '[{\"silver\":\"\",\"sub\":[{\"silver\":\"Responsive Design\"},{\"silver\":\"Basic Information Pages\"},{\"silver\":\"Contact Form\"},{\"silver\":\"Service Page(s)\"},{\"silver\":\"Social Media Integration\"},{\"silver\":\"Development Time: 20 Days\"},{\"silver\":\"Project Gallery\"},{\"silver\":\"Blog Setup\"},{\"silver\":\"Security Features\"},{\"silver\":\"SEO: On-Page SEO\"}]}]', '2018-12-09 17:25:41', '2018-12-09 17:31:53'),
(246, 36, 5, 3, 'ADVANCED', 100, 20000.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"Responsive Design\"},{\"gold\":\"Basic Information Pages\"},{\"gold\":\"Contact Form\"},{\"gold\":\"Service Page(s)\"},{\"gold\":\"Social Media Integration\"},{\"gold\":\"Development Time: 20 Days\"},{\"gold\":\"Project Gallery\"},{\"gold\":\"Blog Setup\"},{\"gold\":\"Security Features\"},{\"gold\":\"SEO: On-Page SEO\"}]}]', '2018-12-09 17:25:41', '2018-12-09 17:31:53'),
(247, 37, 5, 1, 'STARTER', 100, 15000.00, 0, '[{\"basic\":\"\",\"sub\":[{\"basic\":\"Responsive Design\"},{\"basic\":\"Basic Information Pages\"},{\"basic\":\"Contact Form\"},{\"basic\":\"Fast loading\"},{\"basic\":\"Social media integration\"},{\"basic\":\"Easy to Update\"},{\"basic\":\"Slider: 5 Sliders\"},{\"basic\":\"Pages: Unlimited\"},{\"basic\":\"Design: 2 Sample Design\"},{\"basic\":\"Affordable to improve\"},{\"basic\":\"Security Features\"}]}]', '2018-12-09 17:54:51', '2018-12-09 17:54:51'),
(248, 37, 5, 2, 'STANDARD', 100, 20000.00, 0, '[{\"silver\":\"\",\"sub\":[{\"silver\":\"Responsive Design\"},{\"silver\":\"Basic Information Pages\"},{\"silver\":\"Contact Form\"},{\"silver\":\"Fast loading\"},{\"silver\":\"Social media integration\"},{\"silver\":\"Easy to Update\"},{\"silver\":\"Slider: 8 Sliders\"},{\"silver\":\"Pages: Unlimited\"},{\"silver\":\"Design: 3 Sample Design\"},{\"silver\":\"Affordable to improve\"},{\"silver\":\"Security Features\"}]}]', '2018-12-09 17:54:51', '2018-12-09 17:54:51'),
(249, 37, 5, 3, 'ADVANCED', 100, 25000.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"Responsive Design\"},{\"gold\":\"Basic Information Pages\"},{\"gold\":\"Contact Form\"},{\"gold\":\"Fast loading\"},{\"gold\":\"Social media integration\"},{\"gold\":\"Easy to Update\"},{\"gold\":\"Slider: 12 Sliders\"},{\"gold\":\"Pages: Unlimited\"},{\"gold\":\"Design: 5 Sample Design\"},{\"gold\":\"Affordable to improve\"},{\"gold\":\"Security Features\"}]}]', '2018-12-09 17:54:51', '2018-12-09 17:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `menu_title`, `page_title`, `page_subtitle`, `banner_image`, `content`, `seo_title`, `meta_key`, `meta_description`, `slug`, `template`, `views`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Terms & Conditions', 'Terms & Conditions', 'Everything As Fair & Easy As You Want', 'terms-a-conditions-banner.png', '<h3>Information Collection and Use</h3>\r\n\r\n<p>As a modern digital marketing agency, Doodle Digital collects personal information when you register or contact us from our website. As a buyer, we collect your name, address, email, and telephone number. If you upload and archive documents, we also collect the name and address you wish payments to be made to.</p>\r\n\r\n<p>Doodle Digital uses information for the following general purposes: to customize the advertising and content you see, fulfill your requests for products and services, improve our services, contact you, conduct research, and provide anonymous reporting for internal and external clients.</p>\r\n\r\n<h3>Information Sharing and Disclosure</h3>\r\n\r\n<p>Doodle Digital does not rent, sell, or share personal information about you with other people or nonaffiliated companies except to provide products or services you&#39;ve requested, when we have your permission, or under the following circumstances:</p>\r\n\r\n<ul>\r\n	<li>We respond to subpoenas, court orders, or legal process, or to establish or exercise our legal rights or defend against legal claims;</li>\r\n	<li>We believe it is necessary to share information in order to investigate, prevent, or take action regarding illegal activities, suspected fraud, situations involving potential threats to the physical safety of any person, violations of Doodle Digital&#39;s terms of use, or as otherwise required by law.</li>\r\n	<li>Business Transfers: As we continue to develop our business, we might sell or buy services, stores, or assets. In such transactions, visitor information is usually one of the transferred business assets. Also, in the unlikely event that Doodle Digital is acquired, or substantially all of its assets are acquired, customer information will of course be one of the transferred assets.</li>\r\n	<li>Credit card information will never be disclosed by Doodle Digital and follow the conditions of use established by Visa, Mastercard, Discover, Amex, and PayPal.</li>\r\n</ul>\r\n\r\n<h3>Terms of Service, Notices, and Revisions</h3>\r\n\r\n<p>If you choose to visit Doodle Digital, your visit and any dispute over privacy is subject to this Notice and our Conditions of Use, including limitations on damages, arbitration of disputes, and application of the law of the state of Pennsylvania. If you have any concern about privacy at Doodle Digital, please send us a thorough description to info@doodledigital.net, and we will try to resolve it. Our business changes constantly. This Notice and the Conditions of Use will change also and use of information that we gather now is subject to the Privacy Policy in effect at the time of use. You should check our website frequently to see recent changes.</p>\r\n\r\n<h3>Newsletters</h3>\r\n\r\n<p>Being digital marketing agency by nature, we send newsletters to you and will not sell your email address to 3rd parties. You may choose to opt-out of the newsletter at any time by following the unsubscribe instructions in each newsletter or by contacting us directly. By default, all contact from our website is entered into our CRM and newsletter distribution list. If you would prefer not to be added to our email distribution list, please specify this in the body of email or contact from submission to us.</p>\r\n\r\n<h3>Copyright</h3>\r\n\r\n<p>The digital images and transcripts of documents on Doodle Digital are the copyright of Doodle Digital through our photo licenses with other providers or are the individual copyright of Doodle Digital.</p>\r\n\r\n<p>The index and all related website content are the copyright of Doodle Digital.</p>\r\n\r\n<h3>Permitted Use</h3>\r\n\r\n<p>Visitors to this website are granted permission to access this material, to download and copy such material on to electronic, magnetic, optical or similar storage media and to make printed copies of any such downloaded material, provided that such activities and copies are for non-commercial private study and research only.</p>\r\n\r\n<h3>Restricted Use</h3>\r\n\r\n<p>Visitors to this website may not copy, distribute, screen shot, reproduce, sell or publish any of the copyright material downloaded or copies from this website. For the avoidance of doubt, no permission is given for the transfer of any of this material to an open internet site. For permission, please contact info@doodledigital.net. Doodle Digital monitors the web closely for violations of our user policy.</p>', 'Our Terms & Conditions | A Fair Digital Marketing Agency', 'digital marketing agency', 'Doodle Digital follows the standard procedures regarding the terms and conditions applicable to users. As a conscious digital marketing agency, we always stay updated with the latest guidelines. Read more!', 'terms-conditions', NULL, 54, 1, 1, 1, '2017-10-24 23:07:17', '2018-12-06 17:23:37'),
(4, 'Privacy Policy', 'Privacy Policy', 'Assurance For Confidentiality Of User Information', 'privacy-policy-banner.png', '<p>Doodle Digital, a proactive digital marketing agency, has its Privacy Policy that governs and describes how Doodle Digital gathers, uses, keeps tracks of and discloses user information (each, a &ldquo;User&rdquo;) of the https://doodledigital.net website (&ldquo;Site&rdquo;). This privacy policy is applicable to the Site as well as all its products and services.</p>\r\n\r\n<h3>Personal identification information</h3>\r\n\r\n<p>We may collect Users&rsquo; personal identification information in different ways that might include but not be limited to, the time users visit the Site, signup with the Site, make an order, subscribe to our newsletter, provide response to any of our surveys, fill out any form, and in relation with other services, features, activities, or resources available on the Site.</p>\r\n\r\n<p>We may ask Users for, as suitable, full name, email and mailing address, cell number, and credit card information. However, Users may visit the site anonymously. We will collect and store Users&rsquo; personal identification information only when they submit the information voluntarily. Users can avoid supplying personally identification information if they want, except that such avoidance may not allow them to participate in certain activities.</p>\r\n\r\n<h3>Non-personal identification information</h3>\r\n\r\n<p>Non-personal identification information may be collected as Users do any interaction with the Site. Such information may include the device name, browser name, operating system, name of ISP, and other technical information.</p>\r\n\r\n<h3>Web Cookies:</h3>\r\n\r\n<p>Cookies may be used to improve User experience. The web browsers used by Users put cookies on their personal computers&rsquo; hard drives for keeping records and at times to keep track of information about them. It is permitted that User can customize their browsers to refuse cookies, or to send them alerts as cookies are sent. If cookies are refused, some features of the Site may function inappropriately.</p>\r\n\r\n<h3>Use of the collected information:</h3>\r\n\r\n<p>Following are the purposes Doodle Digital may use the collected User information.</p>\r\n\r\n<ul>\r\n	<li>To improve User service and be able to respond to their queries or service requests efficiently.</li>\r\n	<li>To be able to personalize user experience by understanding how Users use the resources or service on the Site.</li>\r\n	<li>To improve the Site or its services using customers&rsquo; feedback as the guidance in particular.</li>\r\n	<li>To process online payments as users, place orders and make payments. (Information is not shared with any outside party except the amount of information required compulsorily for the service)</li>\r\n	<li>To make arrangement for a contest, survey, promotion, and similar online events.</li>\r\n	<li>To offer Users resources or information as per their agreement to receive them about different topics that we find useful for them.</li>\r\n	<li>To send users on a periodic basis.</li>\r\n</ul>\r\n\r\n<h3>How to unsubscribe?</h3>\r\n\r\n<p>If the User feels it is right to unsubscribe from getting our future emails regarding different digital marketing agency services and offers, he/she can go through our detailed unsubscribe guidelines located at the bottom of any email they received from us. However, the User may, if required, contact us directly via our Site.</p>\r\n\r\n<h3>Protection of User information:</h3>\r\n\r\n<p>We follow appropriate and legitimate methods to collect, store, and process data. We adopt strong security measures to ensure maximum protection against any instance of alteration, unauthorized access, destruction of personal information, login credentials, transaction information, disclosure, and any sensitive data stored on the Site.</p>\r\n\r\n<h3>Sharing your personal information</h3>\r\n\r\n<p>We do not sell, trade, or rent Users personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates and advertisers for the purposes outlined above. We may use third party service providers to help us operate our business and the Site or administer activities on our behalf, such as sending out newsletters or surveys. We may share your information with these third parties for those limited purposes provided that you have given us your permission.</p>\r\n\r\n<h3>Compliance with children&rsquo;s online privacy protection act</h3>\r\n\r\n<p>Protecting the privacy of the very young is especially important. For that reason, we never collect or maintain information at our Site from those we actually know are under 13, and no part of our website is structured to attract anyone under 13.</p>\r\n\r\n<h3>Changes to this privacy policy</h3>\r\n\r\n<p>Doodle Digital has the discretion to update this privacy policy at any time. When we do, we will revise the updated date at the bottom of this page. We encourage Users to frequently check this page for any changes to stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this privacy policy periodically and become aware of modifications.</p>\r\n\r\n<h3>Your acceptance of these terms</h3>\r\n\r\n<p>By using this Site, you signify your acceptance of this policy. If you do not agree to this policy, please do not use our Site. Your continued use of the Site following the posting of changes to this policy will be deemed your acceptance of those changes.</p>', 'Our Privacy Policy | A Complete Digital Marketing Agency', 'Digital marketing agency', 'Doodle Digital has experienced what users love to share with a website and what not. Also, we know as a well-aware digital marketing agency we need to ensure that the data of our users are safe and private.', 'privacy-policy', NULL, 22, 1, 1, 1, '2018-03-29 03:03:07', '2018-12-06 17:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('engr.mrksohag@gmail.com', '$2y$10$2/WvYIVopKu7oPBht1g6teOhn8i6/nr3tEvyBXGviz96egqwtNHdC', '2018-04-03 01:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `paid` double(10,2) NOT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci,
  `return_url` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=Completed, 2=Pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_method_id`, `paid`, `transaction_id`, `return_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 799.00, 'PAY-6X449590HP176603DLJGKLZQ', 'https://api.sandbox.paypal.com/v1/payments/sale/75G664040D0986747/refund', 1, '2018-01-03 03:45:11', '2018-01-03 03:45:11'),
(2, 2, 1, 8.00, 'PAY-3R1183258F352003WLJG2QKY', 'https://api.sandbox.paypal.com/v1/payments/sale/1S3388214P661914E/refund', 1, '2018-01-03 22:06:31', '2018-01-03 22:06:31'),
(3, 3, 1, 4.00, 'PAY-4GU81455B87040635LJUBXMY', 'https://api.sandbox.paypal.com/v1/payments/sale/5AA524754K4918323/refund', 1, '2018-01-23 23:40:02', '2018-01-23 23:40:02'),
(4, 4, 1, 3199.00, 'PAY-2L801351GX944631HLJ4CD6Y', 'https://api.sandbox.paypal.com/v1/payments/sale/69B56335YT656254A/refund', 1, '2018-02-05 09:21:30', '2018-02-05 09:21:30'),
(5, 5, 1, 1499.00, 'PAY-9T205474UD8556111LJ4CEVI', 'https://api.sandbox.paypal.com/v1/payments/sale/4DP844660V248840N/refund', 1, '2018-02-05 09:22:50', '2018-02-05 09:22:50'),
(6, 10, 1, 1499.00, 'PAY-6RK354226J315935WLKAUZ6Y', 'https://api.sandbox.paypal.com/v1/payments/sale/1B523330NG720580T/refund', 1, '2018-02-12 08:15:36', '2018-02-12 08:15:36'),
(7, 11, 1, 2599.00, 'PAY-1FA93969EJ969091BLKXXO4I', 'https://api.sandbox.paypal.com/v1/payments/sale/4HA5142706531770V/refund', 1, '2018-03-19 02:40:59', '2018-03-19 02:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1=Offline and 2 = Online Without Card and 3 = Online With Card',
  `mode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'sandbox',
  `api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=Completed, 2=Pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `description`, `image`, `type`, `mode`, `api_key`, `api_secret`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', '<p>test</p>', 'paypal.png', 2, 'sandbox', 'Abk1x3VRtXC53tpqWObi85U47_p1Lijc-OIH1wy6HC2yRt1ghvv-kW_KjLBvKUnomQxJ9oRg9WTI87-n', 'EF93DMB6AV5MIizVektFJMG9dvBDqBOsdjc4JPE4D_xFLYWKuqQYoUClnUhllnTkS7LsL5r1uA5b3dbE', 1, 1, 1, '2017-11-15 22:17:24', '2017-11-16 02:36:04'),
(2, 'Master Card', NULL, 'mastercard.png', 3, 'sandbox', 'Abk1x3VRtXC53tpqWObi85U47_p1Lijc-OIH1wy6HC2yRt1ghvv-kW_KjLBvKUnomQxJ9oRg9WTI87-n', 'EF93DMB6AV5MIizVektFJMG9dvBDqBOsdjc4JPE4D_xFLYWKuqQYoUClnUhllnTkS7LsL5r1uA5b3dbE', 1, 1, 1, '2017-11-15 22:47:19', '2017-11-16 02:36:22'),
(3, 'Credit Card', '<p>asdf</p>', 'visa.png', 3, 'sandbox', 'Abk1x3VRtXC53tpqWObi85U47_p1Lijc-OIH1wy6HC2yRt1ghvv-kW_KjLBvKUnomQxJ9oRg9WTI87-n', 'EF93DMB6AV5MIizVektFJMG9dvBDqBOsdjc4JPE4D_xFLYWKuqQYoUClnUhllnTkS7LsL5r1uA5b3dbE', 1, 1, 1, '2017-11-15 22:47:55', '2018-02-05 21:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_gallery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `slug`, `link`, `duration`, `description`, `image`, `image_gallery`, `views`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(7, 'There are many variations of passages of Lorem Ipsum available', 'there-are-many-variations-of-passages-of-lorem-ipsum-available-1', NULL, NULL, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text repeat predefined chunks as necessary.</p>', 'large-thumb-7.jpg', '[\"\"]', 3, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-21 04:04:44', '2018-12-13 06:43:05'),
(8, 'Some patience for the modern marketer', 'some-patience-for-the-modern-marketer-1', NULL, NULL, '<p><span style=\"color:rgb(85, 85, 85); font-family:roboto,sans-serif; font-size:16px\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. don&#39;t look even slightly believable.</span></p>', 'large-thumb-9.jpg', '[\"\"]', 1, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-21 04:08:42', '2018-12-11 18:31:42'),
(9, 'A conversation about our next challange', 'a-conversation-about-our-next-challange-1', NULL, NULL, '<p><span style=\"color:rgb(85, 85, 85); font-family:roboto,sans-serif; font-size:16px\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. don&#39;t look even slightly believable.</span></p>', 'large-thumb-8.jpg', '[\"\"]', 4, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-21 04:09:36', '2018-12-11 03:41:47'),
(10, 'Some patience for the modern marketer', 'some-patience-for-the-modern-marketer-1-1-1-1', 'http://nextpagetl.com', '1 Month', '<p><span style=\"color:rgb(85, 85, 85); font-family:roboto,sans-serif; font-size:16px\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. don&#39;t look even slightly believable.</span></p>', 'large-thumb-10.jpg', '[\"\"]', 7, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-21 04:10:49', '2018-12-13 06:28:51'),
(12, 'Pan De Asia Restaurant  & Convention Center', 'pan-de-asia-restaurant-convention-center-1-1-1-1-1', 'http://www.pandeasia.com/', '20 Days', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident sunt ipsum iusto, ut dolor iste itaque fuga corporis. Sint occaecat cup non proident, sunt in culpa qui.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia voluptate asperiores nobis, aut consequatur esse sapiente. Sint occaecat cup non proident, sunt in culpa qui.</p>', 'screenshot_4.png', '[\"\"]', 83, NULL, NULL, NULL, NULL, NULL, 2, '2018-11-05 23:06:56', '2018-12-13 07:57:07'),
(13, 'Idea Tech', 'idea-tech-1', 'http://www.ideatecltd.com', '25 Days', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident sunt ipsum iusto, ut dolor iste itaque fuga corporis. Sint occaecat cup non proident, sunt in culpa qui.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia voluptate asperiores nobis, aut consequatur esse sapiente. Sint occaecat cup non proident, sunt in culpa qui.</p>', 'idea-tec_1.jpg', '[\"\"]', 5, NULL, NULL, NULL, NULL, NULL, 2, '2018-12-13 07:06:19', '2018-12-13 07:12:22'),
(15, 'Full Stack Developer – PHP', 'full-stack-developer-php', 'admin/portfolios/create', 'r Day', '<pre>\r\nFull Stack Developer &ndash; PHPFull Stack Developer &ndash; PHPFull Stack Developer &ndash; PHPFull Stack Developer &ndash; PHP</pre>', 'single-portfolio-1.jpg', '[\"\"]', 1, NULL, NULL, NULL, NULL, NULL, 2, '2018-12-13 07:59:43', '2018-12-13 08:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packsize` int(10) UNSIGNED NOT NULL,
  `buying_price` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=Active, 2=Pending, 3=Cancel',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permission`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '', 1, NULL, 1, NULL, NULL),
(6, 'Editor', 'a:17:{s:5:\"blogs\";a:9:{s:5:\"blogs\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:6:\"create\";s:1:\"1\";s:4:\"edit\";s:1:\"1\";s:18:\"blog_status_update\";s:1:\"1\";s:12:\"blog_comment\";s:1:\"1\";s:13:\"reply_comment\";s:1:\"1\";s:12:\"edit_comment\";s:1:\"1\";s:21:\"comment_status_update\";s:1:\"1\";}s:10:\"categories\";a:5:{s:10:\"categories\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:6:\"create\";s:1:\"1\";s:4:\"edit\";s:1:\"1\";s:22:\"category_status_update\";s:1:\"1\";}s:4:\"tags\";a:5:{s:4:\"tags\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:6:\"create\";s:1:\"1\";s:4:\"edit\";s:1:\"1\";s:17:\"tag_status_update\";s:1:\"1\";}s:7:\"sliders\";a:5:{s:7:\"sliders\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:10:\"add_slider\";s:1:\"1\";s:11:\"edit_slider\";s:1:\"1\";s:20:\"slider_status_update\";s:1:\"1\";}s:5:\"cases\";a:5:{s:5:\"cases\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:6:\"create\";s:1:\"1\";s:4:\"edit\";s:1:\"1\";s:18:\"case_status_update\";s:1:\"1\";}s:8:\"services\";a:5:{s:8:\"services\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:6:\"create\";s:1:\"1\";s:4:\"edit\";s:1:\"1\";s:21:\"service_status_update\";s:1:\"1\";}s:8:\"packages\";a:5:{s:8:\"packages\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:6:\"create\";s:1:\"1\";s:4:\"edit\";s:1:\"1\";s:21:\"package_status_update\";s:1:\"1\";}s:7:\"coupons\";a:5:{s:7:\"coupons\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:6:\"create\";s:1:\"1\";s:4:\"edit\";s:1:\"1\";s:20:\"coupon_status_update\";s:1:\"1\";}s:4:\"page\";a:5:{s:4:\"page\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:8:\"add_page\";s:1:\"1\";s:9:\"edit_page\";s:1:\"1\";s:18:\"page_status_update\";s:1:\"1\";}s:6:\"orders\";a:6:{s:6:\"orders\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:4:\"show\";s:1:\"1\";s:8:\"download\";s:1:\"1\";s:19:\"order_status_update\";s:1:\"1\";s:21:\"payment_status_update\";s:1:\"1\";}s:5:\"media\";a:2:{s:6:\"upload\";s:1:\"1\";s:4:\"view\";s:1:\"1\";}s:10:\"appearance\";a:5:{s:10:\"appearance\";s:1:\"1\";s:14:\"smthemeoptions\";s:1:\"1\";s:5:\"menus\";s:1:\"1\";s:6:\"editor\";s:1:\"1\";s:10:\"updatefile\";s:1:\"1\";}s:11:\"subscribers\";a:3:{s:11:\"subscribers\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:4:\"edit\";s:1:\"1\";}s:9:\"customers\";a:5:{s:9:\"customers\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:12:\"add_customer\";s:1:\"1\";s:13:\"edit_customer\";s:1:\"1\";s:22:\"customer_status_update\";s:1:\"1\";}s:5:\"users\";a:5:{s:5:\"users\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:8:\"add_user\";s:1:\"1\";s:9:\"edit_user\";s:1:\"1\";s:18:\"user_status_update\";s:1:\"1\";}s:14:\"paymentmethods\";a:5:{s:15:\"payment_methods\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:6:\"create\";s:1:\"1\";s:4:\"edit\";s:1:\"1\";s:28:\"payment_method_status_update\";s:1:\"1\";}s:5:\"taxes\";a:5:{s:5:\"taxes\";s:1:\"1\";s:5:\"index\";s:1:\"1\";s:6:\"create\";s:1:\"1\";s:4:\"edit\";s:1:\"1\";s:17:\"tax_status_update\";s:1:\"1\";}}', 1, 1, 1, '2017-12-19 02:44:09', '2018-03-02 22:20:43'),
(7, 'User', 'N;', 1, NULL, 1, '2018-03-02 21:47:25', '2018-03-02 21:47:25'),
(8, 'Author', 'N;', 1, NULL, 1, '2018-03-13 21:38:59', '2018-03-13 21:38:59'),
(9, 'Code Editor', 'a:2:{s:5:\"media\";a:1:{s:6:\"upload\";s:1:\"1\";}s:10:\"appearance\";a:3:{s:10:\"appearance\";s:1:\"1\";s:6:\"editor\";s:1:\"1\";s:10:\"updatefile\";s:1:\"1\";}}', 1, NULL, 1, '2018-03-15 04:39:31', '2018-03-15 04:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext CHARACTER SET utf8,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `option_name`, `option_value`, `created_by`, `modified_by`, `autoload`, `status`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Next Page Technology Ltd.', 1, 1, 1, 1, NULL, '2018-10-30 11:18:45'),
(2, 'tag_line', 'Best website development in Bangladesh', 1, 1, 1, 1, NULL, '2018-10-30 11:18:45'),
(3, 'address', 'House 34(3B), Road 2, Nikunja 2, Dhaka-1229', 1, 1, 1, 1, NULL, '2018-10-30 11:18:45'),
(4, 'email', 'info@nextpagetl.com', 1, 1, 1, 1, NULL, '2018-10-30 11:18:45'),
(5, 'secondary_email', 'supports@nextpagetl.com', 1, 1, 1, 1, NULL, '2018-10-30 11:18:45'),
(6, 'mobile', '+8801711084621', 1, 1, 1, 1, NULL, '2018-10-30 11:18:45'),
(7, 'logo', 'logo-color__28104-50_29.png', 1, 1, 1, 1, NULL, '2018-10-31 03:42:16'),
(8, 'favicon', 'fav-nextpagetl_1.png', 1, 1, 1, 1, NULL, '2018-10-31 03:42:16'),
(9, 'site_screenshot', 'doodle.jpg', 1, 1, 1, 1, NULL, '2018-01-22 06:02:33'),
(10, 'site_meta_keywords', 'next page tl', 1, 1, 1, 1, NULL, '2018-03-13 04:10:19'),
(11, 'site_meta_description', 'We are providing unique &amp; cute website design and development, SEO, Digital Marketing, E-commerce services, domain &amp; hosting services, software etc.', 1, 1, 1, 1, NULL, '2018-03-13 04:11:01'),
(12, 'main_menu', 'a:1:{s:9:\"menu_item\";a:30:{i:1;a:8:{s:2:\"id\";s:1:\"1\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:7:\"Company\";s:4:\"link\";s:1:\"#\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:2;a:8:{s:2:\"id\";s:1:\"2\";s:4:\"p_id\";s:1:\"1\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:5:\"About\";s:4:\"link\";s:6:\"/about\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:3;a:8:{s:2:\"id\";s:1:\"3\";s:4:\"p_id\";s:1:\"1\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:4:\"Team\";s:4:\"link\";s:5:\"/team\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:4;a:8:{s:2:\"id\";s:1:\"4\";s:4:\"p_id\";s:1:\"1\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:9:\"Portfolio\";s:4:\"link\";s:10:\"/portfolio\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:5;a:8:{s:2:\"id\";s:1:\"5\";s:4:\"p_id\";s:1:\"1\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:6:\"Career\";s:4:\"link\";s:7:\"/career\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:6;a:8:{s:2:\"id\";s:1:\"6\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:7:\"Website\";s:4:\"link\";s:8:\"/website\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:7;a:8:{s:2:\"id\";s:1:\"7\";s:4:\"p_id\";s:1:\"6\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:20:\"	Domain Registration\";s:4:\"link\";s:29:\"/packages/domain-registration\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:8;a:8:{s:2:\"id\";s:1:\"8\";s:4:\"p_id\";s:1:\"6\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:8:\"	Hosting\";s:4:\"link\";s:17:\"/packages/hosting\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:9;a:8:{s:2:\"id\";s:1:\"9\";s:4:\"p_id\";s:1:\"6\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:22:\"E-commerce Development\";s:4:\"link\";s:32:\"/packages/e-commerce-development\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:10;a:8:{s:2:\"id\";s:2:\"10\";s:4:\"p_id\";s:1:\"6\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:15:\"Company Website\";s:4:\"link\";s:25:\"/packages/company-website\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:11;a:8:{s:2:\"id\";s:2:\"11\";s:4:\"p_id\";s:1:\"6\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:16:\"Hospital Website\";s:4:\"link\";s:26:\"/packages/hospital-website\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:12;a:8:{s:2:\"id\";s:2:\"12\";s:4:\"p_id\";s:1:\"6\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:19:\"Educational Website\";s:4:\"link\";s:29:\"/packages/educational-website\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:13;a:8:{s:2:\"id\";s:2:\"13\";s:4:\"p_id\";s:1:\"6\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:17:\"Newspaper Website\";s:4:\"link\";s:27:\"/packages/newspaper-website\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:14;a:8:{s:2:\"id\";s:2:\"14\";s:4:\"p_id\";s:1:\"6\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:17:\"Portfolio Website\";s:4:\"link\";s:27:\"/packages/portfolio-website\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:15;a:8:{s:2:\"id\";s:2:\"15\";s:4:\"p_id\";s:1:\"6\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:16:\"Blogging Website\";s:4:\"link\";s:26:\"/packages/blogging-website\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:16;a:8:{s:2:\"id\";s:2:\"16\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:8:\"Software\";s:4:\"link\";s:1:\"#\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:17;a:8:{s:2:\"id\";s:2:\"17\";s:4:\"p_id\";s:2:\"16\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:21:\"Garments ERP Software\";s:4:\"link\";s:31:\"/packages/garments-erp-software\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:18;a:8:{s:2:\"id\";s:2:\"18\";s:4:\"p_id\";s:2:\"16\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:23:\"ERP Management Software\";s:4:\"link\";s:33:\"/packages/erp-management-software\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:19;a:8:{s:2:\"id\";s:2:\"19\";s:4:\"p_id\";s:2:\"16\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:28:\"Pharmacy Management Software\";s:4:\"link\";s:38:\"/packages/pharmacy-management-software\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:20;a:8:{s:2:\"id\";s:2:\"20\";s:4:\"p_id\";s:2:\"16\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:26:\"School Management Software\";s:4:\"link\";s:36:\"/packages/school-management-software\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:21;a:8:{s:2:\"id\";s:2:\"21\";s:4:\"p_id\";s:2:\"16\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:30:\"Restaurant Management Software\";s:4:\"link\";s:40:\"/packages/restaurant-management-software\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:22;a:8:{s:2:\"id\";s:2:\"22\";s:4:\"p_id\";s:2:\"16\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:39:\"Account & Inventory Management Software\";s:4:\"link\";s:47:\"/packages/account-inventory-management-software\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:23;a:8:{s:2:\"id\";s:2:\"23\";s:4:\"p_id\";s:2:\"16\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:14:\"Point of Sales\";s:4:\"link\";s:24:\"/packages/point-of-sales\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:24;a:8:{s:2:\"id\";s:2:\"24\";s:4:\"p_id\";s:2:\"16\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:25:\"Store Management Software\";s:4:\"link\";s:35:\"/packages/store-management-software\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:25;a:8:{s:2:\"id\";s:2:\"25\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:17:\"Digital Marketing\";s:4:\"link\";s:1:\"#\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:26;a:8:{s:2:\"id\";s:2:\"26\";s:4:\"p_id\";s:2:\"25\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:18:\"Facebook Marketing\";s:4:\"link\";s:28:\"/packages/facebook-marketing\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:27;a:8:{s:2:\"id\";s:2:\"27\";s:4:\"p_id\";s:2:\"25\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:15:\"Email Marketing\";s:4:\"link\";s:25:\"/packages/email-marketing\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:28;a:8:{s:2:\"id\";s:2:\"28\";s:4:\"p_id\";s:2:\"25\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:26:\"Search Engine Optimization\";s:4:\"link\";s:36:\"/packages/search-engine-optimization\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:29;a:8:{s:2:\"id\";s:2:\"29\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:4:\"Blog\";s:4:\"link\";s:5:\"/blog\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:30;a:8:{s:2:\"id\";s:2:\"30\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:7:\"Contact\";s:4:\"link\";s:8:\"/contact\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}}}', 1, 1, 1, 1, NULL, '2018-12-13 08:03:20'),
(13, 'fb_page', 'http://facebook.com/smddtech', 1, NULL, 1, 1, NULL, NULL),
(14, 'gp_page', 'http://facebook.com/smddtech', 1, NULL, 1, 1, NULL, NULL),
(15, 'tt_page', 'http://facebook.com/smddtech', 1, NULL, 1, 1, NULL, NULL),
(16, 'li_page', 'http://facebook.com/smddtech', 1, NULL, 1, 1, NULL, NULL),
(17, 'youtube_page', 'http://facebook.com/smddtech', 1, NULL, 1, 1, NULL, NULL),
(18, 'about', 'SEOis a section of Search Engine Land that focuses not on search marketing advice but rather the search marketing industry.', 1, 1, 1, 2, NULL, '2018-10-30 11:18:45'),
(20, 'sm_theme_options_home_setting', 'a:46:{s:22:\"slider_change_autoplay\";s:1:\"3\";s:8:\"features\";a:4:{i:0;a:4:{s:13:\"feature_title\";s:15:\"SEO Performance\";s:19:\"feature_description\";s:98:\"Diversified optimizations for higher rank on Google and Bing in a few months after the indexation.\";s:12:\"feature_link\";s:1:\"#\";s:13:\"feature_image\";s:11:\"icon_01.png\";}i:1;a:4:{s:13:\"feature_title\";s:18:\"Network Protection\";s:19:\"feature_description\";s:103:\"State-of-the-art network security and protection to protect businesses from the latest malware attacks.\";s:12:\"feature_link\";s:1:\"#\";s:13:\"feature_image\";s:11:\"icon_02.png\";}i:2;a:4:{s:13:\"feature_title\";s:19:\"Speed Optimiziation\";s:19:\"feature_description\";s:96:\"Highest score on Google\'s page speed, GTmetrix, and Pingdom for every webpage or site we handle.\";s:12:\"feature_link\";s:1:\"#\";s:13:\"feature_image\";s:11:\"icon_03.png\";}i:3;a:4:{s:13:\"feature_title\";s:18:\"The Best Solutions\";s:19:\"feature_description\";s:102:\"Fail-proof, resilient SEO, top-notch security, zero downtime servers, and great UX for every business.\";s:12:\"feature_link\";s:1:\"#\";s:13:\"feature_image\";s:11:\"icon_04.png\";}}s:26:\"home_is_seo_section_enable\";s:1:\"1\";s:14:\"home_seo_title\";s:15:\"Your SEO Score?\";s:18:\"home_seo_btn_title\";s:12:\"Check up now\";s:17:\"seo_feature_title\";s:23:\"Journey To The 1st Page\";s:23:\"seo_feature_description\";s:241:\"Long or short, every trip to the first page of search engine involves proper coordination and implementation of multiple phases, such as research and analysis, planning, prototyping, and execution. Here’s a breakdown of the entire process.\";s:17:\"seo_feature_image\";s:11:\"seo-opt.png\";s:30:\"seo_feature_more_btn_is_enable\";s:1:\"1\";s:26:\"seo_feature_more_btn_label\";s:10:\"Learn more\";s:25:\"seo_feature_more_btn_link\";s:1:\"#\";s:31:\"seo_feature_quote_btn_is_enable\";s:1:\"1\";s:27:\"seo_feature_quote_btn_label\";s:11:\"Learn quote\";s:26:\"seo_feature_quote_btn_link\";s:1:\"#\";s:12:\"seo_features\";a:4:{i:0;a:4:{s:13:\"feature_title\";s:18:\"Research & Analyze\";s:12:\"feature_icon\";s:14:\"plac-icon1.png\";s:12:\"feature_link\";s:1:\"#\";s:19:\"feature_description\";s:325:\"We take different measures for different businesses. For a website that needs the attention of search engines, we research the opportunities and prospects for specific keywords/terms relevant to the industry. Once decided, we analyze the competitors who are already on the market doing the same business and bringing success.\";}i:1;a:4:{s:13:\"feature_title\";s:8:\"Planning\";s:12:\"feature_icon\";s:14:\"plac-icon2.png\";s:12:\"feature_link\";s:1:\"#\";s:19:\"feature_description\";s:331:\"We create a comprehensive plan based on the findings of the research and analysis phase. The plan includes everything for all segments of our company. It includes the design and development process, content development, search engine optimization work plans, social media engagement policy, and other relevant marketing procedures.\";}i:2;a:4:{s:13:\"feature_title\";s:11:\"Prototyping\";s:12:\"feature_icon\";s:14:\"plac-icon3.png\";s:12:\"feature_link\";s:1:\"#\";s:19:\"feature_description\";s:371:\"This phase helps us identify the best combination of our design, development, content, and overall marketing activities. We take a set of diverse action plans into consideration because we need to discover what is going to bring us the expected outcome. Although we cannot take years to purposefully this phase, we take intelligent approaches to make it effective anyway.\";}i:3;a:4:{s:13:\"feature_title\";s:18:\"Execution & Launch\";s:12:\"feature_icon\";s:14:\"plac-icon4.png\";s:12:\"feature_link\";s:4:\"test\";s:19:\"feature_description\";s:366:\"This is the phase we all start looking forward to finishing once we have readied the essentials, such as the website, content, visuals, social media setups, blog, and other assets. However, we have to abide by a set of rules and search engine regulations like Webmasters Tools of Google and Bing in order to stay free of any concern critical to the launch of a site.\";}}s:22:\"seo_marketing_subtitle\";s:15:\"WATCH THE VIDEO\";s:19:\"seo_marketing_title\";s:35:\"How NEXT PAGE TECHNOLOGY LTD Works?\";s:25:\"seo_marketing_description\";s:255:\"<p>Maintaining the world class quality service is always our first priority. Ensure quality is not as a choice, it is our duty. We determine to serve you the best. Next Page technology is organized with a bunch of skilled people from necessary fields.</p>\";s:16:\"seo_video_banner\";s:20:\"nextpage__282_29.jpg\";s:26:\"seo_marketing_video_poster\";s:16:\"video-poster.png\";s:19:\"seo_marketing_video\";s:50:\"01._new_laravel_a_nodejs_project_shopping_cart.mp4\";s:18:\"home_service_title\";s:11:\"Our Service\";s:21:\"home_service_subtitle\";s:81:\"We are promised to provide quality IT solutions with an experienced IT expertise.\";s:8:\"services\";a:6:{i:0;a:5:{s:5:\"title\";s:7:\"Website\";s:11:\"description\";s:245:\"Our experienced web experts and developers develop unique and responsive websites that visitors can have the best possible experience. we have massive experience on doing this. We are one of the leading website development company in Bangladesh.\";s:4:\"link\";s:8:\"/website\";s:5:\"class\";s:11:\"fa fa-globe\";s:13:\"service_image\";s:16:\"icon-03-01_1.png\";}i:1;a:5:{s:5:\"title\";s:8:\"Software\";s:11:\"description\";s:265:\"Along with ERP and HR solution, we offer custom software development services to automate your business in the more efficient way.Our experienced web experts and developers develop unique and responsive Software  that visitors can have the best possible experience.\";s:4:\"link\";s:9:\"/software\";s:5:\"class\";s:11:\"bi bi-tools\";s:13:\"service_image\";s:16:\"icon-03-02_1.png\";}i:2;a:5:{s:5:\"title\";s:18:\"E-Commerce Service\";s:11:\"description\";s:253:\"We do research and analyze the present market and products that your business sell will be higher as possible. we can build you a world class e commerce application for your brand. Our creative and technology skills to solve your complex business needs.\";s:4:\"link\";s:1:\"#\";s:5:\"class\";s:10:\"bi bi-bond\";s:13:\"service_image\";s:16:\"icon-03-03_1.png\";}i:3;a:5:{s:5:\"title\";s:17:\"Digital Marketing\";s:11:\"description\";s:166:\"Our digital marketing strategy is to serve the right content to the right people at the right time.Our customers are not only from Bangladesh but beyond the border. \n\";s:4:\"link\";s:1:\"#\";s:5:\"class\";s:11:\"bi bi-tools\";s:13:\"service_image\";s:14:\"icon-03-04.png\";}i:4;a:5:{s:5:\"title\";s:26:\"Search Engine Optimization\";s:11:\"description\";s:144:\"Optimize your site for search engines to get found by your customers. Today it is far more important to get updated with the strategy of search.\";s:4:\"link\";s:1:\"#\";s:5:\"class\";s:17:\"fa fa-search-plus\";s:13:\"service_image\";s:14:\"icon-03-05.png\";}i:5;a:5:{s:5:\"title\";s:16:\"Domain & Hosting\";s:11:\"description\";s:138:\"Find the Perfect Hosting Package for You. We are one of the most experienced domain registration & hosting service provider in Bangladesh.\";s:4:\"link\";s:1:\"#\";s:5:\"class\";s:24:\"bi bi-accordion-vertical\";s:13:\"service_image\";s:14:\"icon-03-06.png\";}}s:17:\"achievement_title\";s:16:\"Our Achievements\";s:23:\"achievement_description\";s:112:\"We work hard and expect an outcome that will work as a foundation of our stranding and reputation over the years\";s:17:\"achievement_image\";s:16:\"activity-img.png\";s:13:\"total_project\";s:3:\"222\";s:19:\"total_active_client\";s:3:\"333\";s:18:\"total_success_rate\";s:2:\"98\";s:16:\"total_commitment\";s:3:\"100\";s:9:\"wcu_title\";s:37:\"Why Choose Next Page Technology Ltd.?\";s:12:\"wcu_subtitle\";s:62:\"Many Services! Big Claims Everywhere! Then, why us? Because...\";s:15:\"wcu_description\";s:845:\"<ul>\r\n	<li>We Deliver On Time And Every Time.</li>\r\n	<li>We Work Believing Your Business Is Ours Too.</li>\r\n	<li>We Prefer Measurable Marketing To No Guesswork.</li>\r\n	<li>We Measure The Result And Make Adjustment To The Plan.</li>\r\n	<li>Our Actions Reflect Your Brand&rsquo;s Vitality To Bring Result As Desired.</li>\r\n	<li>We Are Comfortable With Requests For Revision In Our Work With No Excuse.</li>\r\n	<li>Our &ldquo;Quality Assessment And Control&rdquo; Operation Is Well Organized And Disciplined.</li>\r\n	<li>We Don&rsquo;t Prioritize A Project By Its Budget. We Work As Per The Agreement With The Client.</li>\r\n	<li>We Keep Testing And Reviewing Our Strategy And Technique To Find Out What Works And What Not.</li>\r\n	<li>We Accept Criticism And If Needed Offer The Constructive And Unbiased, So The Client Can Benefit From It.</li>\r\n</ul>\";s:9:\"wcu_image\";s:19:\"why-choose-img1.png\";s:13:\"case_subtitle\";s:103:\"We have worked on projects that incorporate our expertise from website development to digital marketing\";s:10:\"case_title\";s:13:\"Our Portfolio\";s:9:\"case_show\";s:1:\"3\";s:22:\"home_testimonial_style\";s:8:\"bg-black\";s:10:\"blog_title\";s:11:\"Latest Blog\";s:13:\"blog_subtitle\";s:85:\"Stay informed of what’s trending and upcoming in the digital world through our blog\";s:16:\"blog_description\";s:2:\"NA\";s:9:\"blog_show\";N;s:14:\"branding_title\";s:20:\"Our Valuable Clients\";s:17:\"branding_subtitle\";s:79:\"Get to know about the people and brands that entrusted us with their businesses\";s:5:\"logos\";s:146:\"ecowings.png,the_style_women-logo-done.png,.png,untitled-5.png,5.png,logo__28144-72_29.png,eco_colour_chem.png,3.png,4.png,2.png,1.png,finallf.png\";}', 1, 1, 1, 2, NULL, '2018-12-11 06:55:18'),
(21, 'sm_theme_options_contact_setting', 'a:23:{s:20:\"contact_banner_title\";s:10:\"CONTACT US\";s:23:\"contact_banner_subtitle\";s:36:\"Give Us A Question & Take The Answer\";s:20:\"contact_banner_image\";s:22:\"contact-us-baner_1.png\";s:13:\"contact_title\";s:14:\"We Always Help\";s:16:\"contact_subtitle\";s:78:\"It is Easy To Reach Us For Any Digital Marketing Support Anytime From Anywhere\";s:17:\"contact_des_title\";s:15:\"CONNECT WITH US\";s:19:\"contact_description\";s:1336:\"<p>We have tried to discuss each of <a href=\"https://doodledigital.net/services\" id=\"/\" name=\"/\">our packages and services</a> as comprehensively as it is required to convey our audience the right message about what we can achieve or help you succeed in this complicated and overly challenging digital marketing landscape. That&rsquo;s what we aim at as a digital marketing agency.</p>\r\n\r\n<p>But, we think it is common that you still want to know more because of the vastness of the category of services we offer. We have introduced <a href=\"https://doodledigital.net/blog\" id=\"/services\" name=\"/services\">Doodle Digital Blog</a> to help you understand what happens in digital marketing and how to have a deep understanding of what to expect under the existing circumstances. Also, we have tried to inform you of our responsibilities as a digital marketing agency.</p>\r\n\r\n<p>It is still understandable if you say you want to know more about success in this world and how it can be in your possession. So, you have got a question?</p>\r\n\r\n<p>Being more upfront, can we expect you have decided to try one of our <a href=\"https://doodledigital.net/packages/\">excellent services and packages</a><a id=\"/services\" name=\"/services\">?</a></p>\r\n\r\n<p>Regardless of whatever crosses your mind, please feel free to contact us; write/talk to us.</p>\";s:18:\"contact_form_title\";s:18:\"LEAVE US A MESSAGE\";s:28:\"contact_form_success_message\";s:64:\"Mail successfully send. We will contact you as soon as possible.\";s:20:\"contact_branch_image\";s:20:\"contact-info-bg1.png\";s:20:\"contact_branch_title\";s:7:\"Contact\";s:23:\"contact_branch_subtitle\";s:33:\"The Places Where We Work Together\";s:16:\"contact_branches\";a:4:{i:0;a:6:{s:5:\"title\";s:9:\"Address: \";s:7:\"address\";s:44:\"House 34 (3B), Road 2, Nikunja 2, Dhaka 1229\";s:14:\"footer_address\";s:0:\"\";s:5:\"email\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:5:\"image\";s:12:\"usa-flag.png\";}i:1;a:6:{s:5:\"title\";s:13:\"Anwar Hossain\";s:7:\"address\";s:3:\"CEO\";s:14:\"footer_address\";s:0:\"\";s:5:\"email\";s:24:\" ahossain@nextpagetl.com\";s:6:\"mobile\";s:0:\"\";s:5:\"image\";s:14:\"soudi-flag.png\";}i:2;a:6:{s:5:\"title\";s:18:\"Md. Sakib Ibne Ali\";s:7:\"address\";s:29:\" Manager - Sales & Marketing \";s:14:\"footer_address\";s:0:\"\";s:5:\"email\";s:20:\"sales@nextpagetl.com\";s:6:\"mobile\";s:15:\"+8801711084621 \";s:5:\"image\";s:19:\"bangladesh-flag.png\";}i:3;a:6:{s:5:\"title\";s:14:\"Sajedul Islam \";s:7:\"address\";s:12:\"Manager -IT \";s:14:\"footer_address\";s:0:\"\";s:5:\"email\";s:22:\"sajedul@nextpagetl.com\";s:6:\"mobile\";s:0:\"\";s:5:\"image\";s:0:\"\";}}s:19:\"contact_share_title\";s:13:\"Share With Us\";s:19:\"contact_share_image\";s:15:\"socail-flag.png\";s:22:\"contact_location_title\";s:14:\"Map & Location\";s:25:\"contact_location_subtitle\";s:32:\"Our Locations At Your Fingertips\";s:25:\"contact_location_latitude\";s:9:\"23.797424\";s:26:\"contact_location_longitude\";s:263:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3649.7115320941625!2d90.4144606149828!3d23.82885478455075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c75afd608ef7%3A0x9ce04e520b8dbe5c!2sNext+Page+Technology+Ltd.!5e0!3m2!1sen!2sbd!4v1544339135764\";s:31:\"newsletter_form_success_message\";s:24:\"Subscribed successfully.\";s:17:\"contact_seo_title\";s:78:\"Contact  Next Page Technology Ltd | Find Your Trusted Digital Marketing Agency\";s:21:\"contact_meta_keywords\";s:24:\"Next Page Technology Ltd\";s:24:\"contact_meta_description\";s:214:\"With the continually changing situations of online marketing, businesses from the startups to the most credible ones look for an n efficient digital marketing agency. Here’s the key. Contact Doodle Digital today!\";}', 1, 1, 1, 2, NULL, '2018-12-09 20:06:43'),
(22, 'sm_theme_options_about_setting', 'a:12:{s:18:\"about_banner_title\";s:8:\"ABOUT US\";s:21:\"about_banner_subtitle\";s:34:\"The Story Of A Visionary Community\";s:18:\"about_banner_image\";s:13:\"our-story.jpg\";s:9:\"wwr_title\";s:10:\"Who we are\";s:12:\"wwr_subtitle\";N;s:15:\"wwr_description\";s:397:\"<p><span style=\"color:rgb(155, 171, 179); font-family:pt sans,sans-serif; font-size:15px\">We are promised to provide quality IT solutions with an experienced IT expertise. The company has been designed with very strong and experienced IT Team, technical sales team, technical service team, digital marketing team, innovations and creative team, Planning team and comprehensive advisors.</span></p>\";s:11:\"our_mission\";s:547:\"<p>We have no regrets admitting that we are not like a large organization that sets dozens of missions to accomplish. We are not engaged in seeking profits all the time either. But, we have a very particular mission that, we believe, helps and will aid us in thriving.</p>\r\n\r\n<p>We dream about contributing to make the digital marketing landscape a dynamic world wherein businesses will start, grow, and become a brand having a critical focus on improving people&rsquo;s life by offering them values, insights, conveniences, and opportunities.</p>\";s:10:\"our_vision\";s:641:\"<p>We envision the world of digital marketing as a place for those who look forward to serving others and make a living by honest means. We do possess no hatred for squalid professionals whose only mission is to play false the search engines and spread sweet talks with stories of some instant success to take advantage of disappointed entrepreneurs.</p>\r\n\r\n<p>We reiterate our vision vividly as we welcome a new member to our family, so the new person has the chance to share a common interest. We are proud that we the only mission and one vision have been very influential to tie us together towards a common goal, SUCCESS we call it.</p>\";s:23:\"about_testimonial_style\";N;s:15:\"about_seo_title\";s:66:\"About Doodle Digital | The One-Stop Digital Media Marketing Agency\";s:19:\"about_meta_keywords\";s:30:\"digital media marketing agency\";s:22:\"about_meta_description\";s:208:\"Doodle Digital is passing its first year as a new yet promising digital media marketing agency to work with the mission to help make the digital marketing avenue more reliable for people and businesses alike.\";}', 1, 1, 1, 2, NULL, '2018-11-05 18:15:02'),
(23, 'sm_theme_options_testimonial_setting', 'a:2:{s:17:\"testimonial_title\";s:28:\"What Our Valued Clients Say!\";s:12:\"testimonials\";a:5:{i:0;a:6:{s:5:\"title\";s:18:\"Chester Bennington\";s:12:\"company_name\";s:6:\"Aroath\";s:11:\"description\";s:320:\"I love Next Page Technology ltd for a very particular trait of their character: Adaptability. The combination of the workforce they maintain during a project amazed me although their work plan seemed a little unconventional. The team brought me the required amount of leads and made the conversion easier than I wanted. \";s:17:\"testimonial_image\";s:11:\"thumb-3.png\";s:16:\"testimonial_logo\";s:9:\"sapem.png\";s:22:\"testimonial_logo_about\";s:12:\"clogo3_1.png\";}i:1;a:6:{s:5:\"title\";s:9:\"M A Ryadh\";s:12:\"company_name\";s:13:\"Textile Focus\";s:11:\"description\";s:320:\"I love Next Page Technology ltd for a very particular trait of their character: Adaptability. The combination of the workforce they maintain during a project amazed me although their work plan seemed a little unconventional. The team brought me the required amount of leads and made the conversion easier than I wanted. \";s:17:\"testimonial_image\";s:11:\"thumb-2.png\";s:16:\"testimonial_logo\";s:13:\"sungchang.png\";s:22:\"testimonial_logo_about\";s:12:\"clogo3_1.png\";}i:2;a:6:{s:5:\"title\";s:15:\"Mr. Shohel Rana\";s:12:\"company_name\";s:15:\"Eco Colour Chem\";s:11:\"description\";s:320:\"I love Next Page Technology ltd for a very particular trait of their character: Adaptability. The combination of the workforce they maintain during a project amazed me although their work plan seemed a little unconventional. The team brought me the required amount of leads and made the conversion easier than I wanted. \";s:17:\"testimonial_image\";s:11:\"thumb-2.png\";s:16:\"testimonial_logo\";s:0:\"\";s:22:\"testimonial_logo_about\";s:0:\"\";}i:3;a:6:{s:5:\"title\";s:10:\"Mr. Shauta\";s:12:\"company_name\";s:15:\"Bioscope Events\";s:11:\"description\";s:320:\"I love Next Page Technology ltd for a very particular trait of their character: Adaptability. The combination of the workforce they maintain during a project amazed me although their work plan seemed a little unconventional. The team brought me the required amount of leads and made the conversion easier than I wanted. \";s:17:\"testimonial_image\";s:11:\"thumb-4.png\";s:16:\"testimonial_logo\";s:0:\"\";s:22:\"testimonial_logo_about\";s:0:\"\";}i:4;a:6:{s:5:\"title\";s:9:\"Johan Dev\";s:12:\"company_name\";s:5:\"Daraz\";s:11:\"description\";s:320:\"I love Next Page Technology ltd for a very particular trait of their character: Adaptability. The combination of the workforce they maintain during a project amazed me although their work plan seemed a little unconventional. The team brought me the required amount of leads and made the conversion easier than I wanted. \";s:17:\"testimonial_image\";s:11:\"thumb-2.png\";s:16:\"testimonial_logo\";s:0:\"\";s:22:\"testimonial_logo_about\";s:0:\"\";}}}', 1, 1, 1, 2, NULL, '2018-12-13 06:11:05'),
(24, 'sm_theme_options_team_setting', 'a:9:{s:17:\"team_banner_title\";s:16:\"Our Dynamic Team\";s:20:\"team_banner_subtitle\";s:27:\"The People You Can Count On\";s:17:\"team_banner_image\";s:12:\"our-team.jpg\";s:10:\"team_title\";s:11:\"Our Talents\";s:13:\"team_subtitle\";s:86:\"Meet our experts and team members whose prowess and acumen are our greatest treasures.\";s:5:\"teams\";a:14:{i:0;a:10:{s:10:\"team_image\";s:7:\"ceo.jpg\";s:5:\"title\";s:13:\"Anwar Hossain\";s:10:\"department\";s:10:\"management\";s:11:\"designation\";s:3:\"CEO\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:23:\"ahossain@nextpagetl.com\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:1;a:10:{s:10:\"team_image\";s:15:\"untitled-10.jpg\";s:5:\"title\";s:18:\"Md. Sakib Ibne Ali\";s:10:\"department\";s:9:\"marketing\";s:11:\"designation\";s:27:\"Manager - Sales & Marketing\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:2;a:10:{s:10:\"team_image\";s:15:\"untitled-14.jpg\";s:5:\"title\";s:13:\"Sajedul Islam\";s:10:\"department\";s:8:\"software\";s:11:\"designation\";s:12:\"Manager - IT\";s:6:\"mobile\";s:13:\"8801723331925\";s:5:\"email\";s:22:\"sajedul@nextpagetl.com\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:3;a:10:{s:10:\"team_image\";s:14:\"untitled-4.jpg\";s:5:\"title\";s:17:\"Md.Rubel Howlader\";s:10:\"department\";s:8:\"software\";s:11:\"designation\";s:21:\"Sr. Software Engineer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:4;a:10:{s:10:\"team_image\";s:14:\"untitled-1.jpg\";s:5:\"title\";s:21:\"Shamir Hossain Sarker\";s:10:\"department\";s:9:\"marketing\";s:11:\"designation\";s:35:\"Senior Executive- Sales & marketing\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:19:\"mizan@getwebinc.com\";s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:11:\"google_plus\";s:1:\"#\";s:8:\"linkedin\";s:1:\"#\";}i:5;a:10:{s:10:\"team_image\";s:14:\"untitled-7.jpg\";s:5:\"title\";s:21:\"Md. Mostafizur Rahman\";s:10:\"department\";s:8:\"software\";s:11:\"designation\";s:17:\"Software Engineer\";s:6:\"mobile\";s:13:\"8801739560326\";s:5:\"email\";s:25:\"mostafizur@nextpagetl.com\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:6;a:10:{s:10:\"team_image\";s:15:\"untitled-13.jpg\";s:5:\"title\";s:8:\"Roni Das\";s:10:\"department\";s:8:\"software\";s:11:\"designation\";s:13:\"Web Developer\";s:6:\"mobile\";s:13:\"8801683933333\";s:5:\"email\";s:19:\"roni@nextpagetl.com\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:7;a:10:{s:10:\"team_image\";s:14:\"untitled-8.jpg\";s:5:\"title\";s:19:\"Ekramul Islam Sumon\";s:10:\"department\";s:8:\"software\";s:11:\"designation\";s:13:\"Web Developer\";s:6:\"mobile\";s:13:\"8801714648853\";s:5:\"email\";s:22:\"ekramul@nextpagetl.com\";s:8:\"facebook\";s:35:\"https://www.facebook.com/mmsumon.me\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:8;a:10:{s:10:\"team_image\";s:14:\"untitled-2.jpg\";s:5:\"title\";s:15:\"MD. Rakib Hasan\";s:10:\"department\";s:9:\"marketing\";s:11:\"designation\";s:29:\"Executive-Sakes and marketing\";s:6:\"mobile\";s:14:\"8801717237597\'\";s:5:\"email\";s:26:\"rakib.hasan@nextpagetl.com\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:9;a:10:{s:10:\"team_image\";s:14:\"untitled-9.jpg\";s:5:\"title\";s:8:\"AL-Mamun\";s:10:\"department\";s:8:\"software\";s:11:\"designation\";s:29:\"Executive-Technical Marketing\";s:6:\"mobile\";s:12:\"01679 830057\";s:5:\"email\";s:22:\"almamun@nextpagetl.com\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:10;a:10:{s:10:\"team_image\";s:15:\"untitled-12.jpg\";s:5:\"title\";s:12:\"Ishrat Jahan\";s:10:\"department\";s:9:\"marketing\";s:11:\"designation\";s:29:\"Executive-Sales and marketing\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:11;a:10:{s:10:\"team_image\";s:5:\"e.jpg\";s:5:\"title\";s:12:\"Zahidul Alam\";s:10:\"department\";s:9:\"marketing\";s:11:\"designation\";s:27:\"Executive-sales & Marketing\";s:6:\"mobile\";s:11:\"01775259806\";s:5:\"email\";s:20:\"zahid@nextpagetl.com\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:12;a:10:{s:10:\"team_image\";s:15:\"untitled-15.jpg\";s:5:\"title\";s:13:\"Saif-Ud-Dowla\";s:10:\"department\";s:8:\"software\";s:11:\"designation\";s:29:\"Executive-Technical Marketing\";s:6:\"mobile\";s:11:\"01737750730\";s:5:\"email\";s:19:\"saif@nextpagetl.com\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:13;a:10:{s:10:\"team_image\";s:14:\"untitled-5.jpg\";s:5:\"title\";s:17:\"Md.Raihanul Islam\";s:10:\"department\";s:9:\"marketing\";s:11:\"designation\";s:26:\"Excutive-sales & Marketing\";s:6:\"mobile\";s:11:\"01779999922\";s:5:\"email\";s:21:\"raihan@nextpagetl.com\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}}s:14:\"team_seo_title\";s:69:\"Join Doodle Digital | Be The Part Of A Smart Digital Marketing Agency\";s:18:\"team_meta_keywords\";s:24:\"Digital Marketing Agency\";s:21:\"team_meta_description\";s:195:\"Doodle Digital employs different groups of internet professionals among who you will find marketers, writers, and designers of all levels of skills. Learn more about the digital marketing agency!\";}', 1, 1, 1, 2, NULL, '2018-12-11 18:51:07'),
(25, 'sm_theme_options_services_setting', 'a:14:{s:20:\"service_banner_title\";s:23:\"Our All-Around Services\";s:23:\"service_banner_subtitle\";s:41:\"Supports For Any Business, Any Individual\";s:20:\"service_banner_image\";s:13:\"breadcumb.png\";s:13:\"service_title\";s:39:\"Full Services of Our <br>Digital Agency\";s:16:\"service_subtitle\";s:77:\"Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium.\";s:17:\"service_seo_image\";s:13:\"seo_image.png\";s:17:\"service_seo_title\";s:26:\"Search Engine Optimization\";s:23:\"service_seo_description\";s:818:\"Search engine marketing has evolved a way faster than other online services. To cope with the                            fast-changing scenario in digital marketing, Doodle Digital has adopted tried and true                            techniques and up-to-date insights to be able to assist businesses of all levels, from small                            concerns to large corporations with their digital marketing goals.Being committed to making                            online marketing services easy, affordable, and useful for businesses, we cooperate with                            professionals at different levels and interact with people, so we know how people think,                            buy,                            and live. This is how, we create each of our search engine marketing strategies.\";s:16:\"service_seo_link\";s:1:\"#\";s:23:\"services_posts_per_page\";s:1:\"7\";s:29:\"services_is_breadcrumb_enable\";s:1:\"0\";s:18:\"services_seo_title\";s:53:\"The Most Affordable Digital Marketing Agency Services\";s:22:\"services_meta_keywords\";s:24:\"Digital marketing agency\";s:25:\"services_meta_description\";s:211:\"Doodle Digital has a perfect arrangement to offer first-rate digital marketing agency services to a wide variety of concerns including small and large organizations and meet their special preferences. Read more!\";}', 1, 1, 1, 2, NULL, '2018-10-30 09:35:56'),
(26, 'sm_theme_options_blog_setting', 'a:9:{s:19:\"blog_posts_per_page\";s:1:\"9\";s:17:\"blog_banner_title\";s:8:\"Our Blog\";s:20:\"blog_banner_subtitle\";s:27:\"We Share Everything We Know\";s:17:\"blog_banner_image\";s:23:\"blog-details-banner.jpg\";s:25:\"blog_is_breadcrumb_enable\";s:1:\"0\";s:13:\"blog_ad_image\";s:8:\"badd.jpg\";s:14:\"blog_seo_title\";s:68:\"Doodle Digital Blog | Insights From A Great Digital Marketing Agency\";s:18:\"blog_meta_keywords\";s:24:\"Digital marketing agency\";s:21:\"blog_meta_description\";s:251:\"Being a knowledgeable and active digital marketing agency, Doodle Digital keeps learning and informing people who might need to know trends and insights about different avenues of digital marketing and the world of Internet. Read more to stay updated!\";}', 1, 1, 1, 2, NULL, '2018-10-31 08:23:53'),
(27, 'sm_theme_options_blog_detail_setting', 'a:6:{s:24:\"blog_detail_banner_title\";s:9:\"BLOG HOME\";s:27:\"blog_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:24:\"blog_detail_banner_image\";s:25:\"blog-details-banner_1.jpg\";s:32:\"blog_detail_is_breadcrumb_enable\";s:1:\"0\";s:27:\"blog_related_posts_per_page\";s:1:\"4\";s:22:\"blog_comments_per_page\";s:1:\"4\";}', 1, 1, 1, 2, NULL, '2018-10-31 08:24:12'),
(28, 'sm_theme_options_case_setting', 'a:8:{s:17:\"case_banner_title\";s:13:\"Our Portfolio\";s:20:\"case_banner_subtitle\";s:26:\"Stories We Want To Divulge\";s:17:\"case_banner_image\";s:24:\"case-detals-banner_1.jpg\";s:25:\"case_is_breadcrumb_enable\";s:1:\"0\";s:19:\"case_posts_per_page\";s:1:\"9\";s:14:\"case_seo_title\";N;s:18:\"case_meta_keywords\";N;s:21:\"case_meta_description\";N;}', 1, 1, 1, 2, NULL, '2018-11-05 20:09:07'),
(29, 'sm_theme_options_case_detail_setting', 'a:4:{s:24:\"case_detail_banner_title\";s:12:\"CASE DETAILS\";s:27:\"case_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:24:\"case_detail_banner_image\";s:14:\"breadcumb2.png\";s:32:\"case_detail_is_breadcrumb_enable\";s:1:\"0\";}', 1, 1, 1, 2, NULL, '2018-02-01 00:15:57'),
(30, 'sm_theme_options_blog_sidebar_setting', 'a:6:{s:22:\"blog_popular_is_enable\";s:1:\"1\";s:27:\"blog_popular_posts_per_page\";s:1:\"5\";s:18:\"blog_show_category\";s:1:\"1\";s:13:\"blog_show_tag\";s:1:\"1\";s:15:\"blog_sidebar_ad\";s:14:\"add-banner.png\";s:20:\"blog_sidebar_ad_link\";s:1:\"#\";}', 1, 1, 1, 2, NULL, '2018-10-30 09:35:56'),
(31, 'sm_theme_options_social_setting', 'a:10:{s:15:\"social_facebook\";s:50:\"https://www.facebook.com/nextpagetl/?ref=bookmarks\";s:14:\"social_twitter\";N;s:15:\"social_linkedin\";N;s:18:\"social_google_plus\";N;s:13:\"social_github\";N;s:16:\"social_pinterest\";N;s:14:\"social_behance\";N;s:15:\"social_dribbble\";N;s:16:\"social_instagram\";N;s:14:\"social_youtube\";N;}', 1, 1, 1, 2, NULL, '2018-12-11 06:55:18'),
(32, 'sm_theme_options_footer_setting', 'a:6:{s:11:\"footer_logo\";s:8:\"logo.png\";s:20:\"footer_widget4_title\";s:10:\"QUICK LINK\";s:26:\"footer_widget4_description\";s:333:\"<ul>\r\n	<li><a href=\"/blog\">Blog</a></li>\r\n	<li><a href=\"/faq\">FAQ&rsquo;s</a></li>\r\n	<li><a href=\"/about\">About us</a></li>\r\n	<li><a href=\"/contact\">Contact</a></li>\r\n	<li><a href=\"/team\">Our Team</a></li>\r\n	<li><a href=\"/privacy-policy\">Privacy Policy</a></li>\r\n	<li><a href=\"/terms-conditions\">Terms &amp; Condition</a></li>\r\n</ul>\";s:20:\"footer_widget3_title\";s:13:\"QUICK CONTACT\";s:26:\"footer_widget3_description\";s:734:\"<ul>\r\n	<li><span style=\"color:rgb(221, 221, 221)\">Phone</span>\r\n	<p><a href=\"tel:+8801711084621\" style=\"box-sizing: border-box; color: rgb(119, 119, 119); text-decoration-line: none; background-color: transparent; touch-action: manipulation; transition: all 0.3s ease-in-out 0s;\">+8801711084621</a></p>\r\n	</li>\r\n	<li><span style=\"color:rgb(221, 221, 221)\">Email</span>\r\n	<p><a href=\"#\" style=\"box-sizing: border-box; color: rgb(119, 119, 119); text-decoration-line: none; background-color: transparent; touch-action: manipulation; transition: all 0.3s ease-in-out 0s;\">sales@nextpagetl.com</a></p>\r\n	</li>\r\n	<li><span style=\"color:rgb(221, 221, 221)\">Address</span>\r\n	<p>House 34 (3B), Road 2, Nikunja 2, Dhaka 1229</p>\r\n	</li>\r\n</ul>\";s:9:\"copyright\";s:52:\"@2018 Next Page Technology Ltd. All rights reserved.\";}', 1, 1, 1, 2, NULL, '2018-12-11 06:55:18'),
(33, 'country', 'Bangladesh', 1, 1, 1, 2, NULL, '2018-10-30 11:18:45'),
(34, 'caching_time_in_minutes', '10', 1, 1, 1, 1, NULL, NULL),
(35, 'sm_theme_options_services_detail_setting', 'a:5:{s:27:\"service_detail_banner_title\";s:19:\"OUR SERVICES Detail\";s:30:\"service_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:27:\"service_detail_banner_image\";s:15:\"blog-banner.png\";s:35:\"service_detail_is_breadcrumb_enable\";s:1:\"0\";s:25:\"service_detail_mail_title\";s:28:\"Hire Us<br>15 Day FREE Trial\";}', 1, 1, 1, 2, NULL, '2018-10-30 09:35:56'),
(36, 'sm_theme_options_package_detail_setting', 'a:10:{s:35:\"package_detail_is_breadcrumb_enable\";s:1:\"0\";s:26:\"package_pricing_info_title\";s:12:\"Pricing Plan\";s:25:\"package_detail_move_title\";s:20:\"Move to Package info\";s:24:\"package_detail_move_icon\";s:8:\"fa-heart\";s:11:\"step1_image\";s:23:\"digital-advertising.jpg\";s:11:\"step1_title\";s:21:\"Money Back Guaranteed\";s:17:\"step1_description\";s:72:\"We\'re ready to accept your request for a refund that meets the criteria.\";s:11:\"step3_image\";s:23:\"digital-advertising.jpg\";s:11:\"step3_title\";s:23:\"Satisfaction Guaranteed\";s:17:\"step3_description\";s:71:\"We do everything within our reach to deliver you and bring satisfaction\";}', 1, 1, 1, 2, NULL, '2018-10-31 10:00:35'),
(37, 'sm_theme_options_package_setting', 'a:5:{s:20:\"package_banner_title\";s:16:\"VIEW ALL PACKAGE\";s:23:\"package_banner_subtitle\";s:64:\"A World of Opportunities We all know that content has to be good\";s:20:\"package_banner_image\";s:23:\"digital-advertising.jpg\";s:28:\"package_is_breadcrumb_enable\";s:1:\"0\";s:22:\"package_posts_per_page\";s:1:\"2\";}', 1, 1, 1, 2, NULL, '2018-10-31 09:56:07'),
(38, 'is_tax_enable', '0', 1, 1, 1, 2, NULL, '2017-12-05 01:11:45'),
(39, 'default_tax', '10', 1, 1, 1, 2, NULL, '2017-11-18 23:20:39'),
(40, 'default_tax_type', '2', 1, 1, 1, 2, NULL, '2017-11-19 00:29:35'),
(41, 'sm_theme_options_order_setting', 'a:7:{s:20:\"order_posts_per_page\";s:2:\"10\";s:17:\"invoice_signature\";s:13:\"signature.png\";s:24:\"invoice_approved_by_name\";s:20:\"muhammad shah sultan\";s:31:\"invoice_approved_by_designation\";s:23:\"Director of Development\";s:20:\"invoice_banner_title\";s:12:\"CASE DETAILS\";s:23:\"invoice_banner_subtitle\";s:44:\"If you\'re struggling to get more information\";s:20:\"invoice_banner_image\";N;}', 1, 1, 1, 2, NULL, '2018-12-11 06:55:18'),
(42, 'is_maintenance_enable', '0', 1, 1, 1, 2, NULL, '2018-01-31 21:45:02'),
(43, 'maintenance_title', 'We Are In Maintenance Mode', 1, 1, 1, 2, NULL, '2017-12-11 00:26:28'),
(44, 'maintenance_description', '<p>But don`t worry. We`re on it and will have it fixed shorlt.<br />\r\nIn the meantime, try refreshing and check<br />\r\n<a href=\"#\">@doodle digital_Help</a> if we are`t back up in a few minutes.</p>\r\n\r\n<h4>Still not working? <a href=\"#\">Contact Support.</a></h4>', 1, 1, 1, 2, NULL, '2018-01-05 23:00:10'),
(45, 'when_site_will_live', '2018-01-06 06:50:00', 1, 1, 1, 2, NULL, '2018-01-06 00:42:23'),
(46, 'fb_api_enable', 'on', 1, 1, 1, 2, NULL, '2017-12-17 03:39:27'),
(47, 'fb_app_id', '545066605836804', 1, 1, 1, 2, NULL, '2017-12-17 03:39:27'),
(48, 'fb_app_secret', 'b667c66747465e6dc5e4ce022581af4c', 1, 1, 1, 2, NULL, '2017-12-17 03:39:27'),
(49, 'gp_api_enable', 'on', 1, 1, 1, 2, NULL, '2017-12-17 03:40:14'),
(50, 'gp_client_id', '156444176520-mv3aapf5ro40dnqo2d9blggevkovb8k0.apps.googleusercontent.com', 1, 1, 1, 2, NULL, '2017-12-17 03:40:14'),
(51, 'gp_client_secret', 't34Gj6xGxyb6I_kmqW7_FY0p', 1, 1, 1, 2, NULL, '2017-12-17 03:40:14'),
(52, 'tt_api_enable', 'on', 1, 1, 1, 2, NULL, '2017-12-17 03:40:39'),
(53, 'tt_api_key', '4J4bORnQkVo7kgELj8iSQbYQi', 1, 1, 1, 2, NULL, '2017-12-17 03:40:40'),
(54, 'tt_api_secret', 'kPUufLXnu8kRdGCkPpHJfYlFKsggoXwEfWzLjOf6G3kLMOUkBC', 1, 1, 1, 2, NULL, '2017-12-17 03:40:40'),
(55, 'li_api_enable', 'on', 1, 1, 1, 2, NULL, '2017-12-17 03:40:48'),
(56, 'li_client_id', '813xw3vzw8rdbk', 1, 1, 1, 2, NULL, '2017-12-17 03:40:43'),
(57, 'li_client_secret', 'lrM0b3OSAFtXideq', 1, 1, 1, 2, NULL, '2017-12-17 03:40:43'),
(58, 'maintenance_saved', '2018-01-06 05:28:55', 1, NULL, 1, 2, NULL, NULL),
(59, 'sm_theme_options_popup_setting', 'a:6:{s:24:\"newsletter_pop_is_enable\";s:1:\"0\";s:20:\"newsletter_pop_title\";s:19:\"Join Our Newsletter\";s:26:\"newsletter_pop_description\";s:102:\"<p>We really care about you and your website as much as you do. from us you get 100% free support.</p>\";s:15:\"offer_is_enable\";s:1:\"0\";s:11:\"offer_title\";s:21:\"1st Order To 30% Off1\";s:17:\"offer_description\";s:135:\"<p>As content marketing continues to drive results for businesses trying to reach their audience</p>\r\n\r\n<p><a href=\"#\">Get More</a></p>\";}', 1, 1, 1, 2, NULL, '2018-01-24 02:58:07'),
(60, 'is_cache_enable', '1', 1, 1, 1, 2, NULL, '2018-01-20 04:07:18'),
(61, 'cache_update_time', '10', 1, 1, 1, 2, NULL, '2018-01-20 03:23:16'),
(62, 'seo_title', 'Next Page Technology Ltd. | Best website development in Bangladesh', 1, 1, 1, 2, NULL, '2018-03-13 04:21:03'),
(63, 'sm_theme_options_style_n_script_setting', 'a:3:{s:20:\"google_analytic_code\";s:668:\"<script>\r\n        (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n        })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n        ga(\'create\', \'UA-XXXXXXXX-X\', \'auto\');\r\n        ga(\'send\', \'pageview\');\r\n        ga(\'require\', \'linkid\', \'linkid.js\');\r\n        ga(\'require\', \'displayfeatures\');\r\n        setTimeout(\"ga(\'send\',\'event\',\'Profitable Engagement\',\'time on page more than 30 seconds\')\",30000);\r\n    </script>\";s:21:\"mrks_theme_custom_css\";N;s:20:\"mrks_theme_custom_js\";N;}', 1, 1, 1, 2, NULL, '2018-03-19 21:45:44');
INSERT INTO `settings` (`id`, `option_name`, `option_value`, `created_by`, `modified_by`, `autoload`, `status`, `created_at`, `updated_at`) VALUES
(64, 'sm_theme_options_faq_setting', 'a:5:{s:16:\"faq_banner_image\";s:16:\"faq-banner_1.png\";s:12:\"faq_sections\";a:3:{i:0;a:2:{s:17:\"faq_section_title\";s:32:\"Search Engine Optimization (SEO)\";s:4:\"faqs\";a:3:{i:0;a:2:{s:9:\"faq_title\";s:66:\"How is your SEO service unique to those offered by other agencies?\";s:15:\"faq_description\";s:1089:\"We pride ourselves for our attention to detail. From the very start our SEO professionals will perform a deep analysis of your business to understand the market you’re competing in and the specific practices your competitors engage in to compete online.\nOur approach to SEO focuses on revealing the facts and letting those facts dictate every aspect of the campaign. We choose the keywords your campaign uses, the structure your website takes, and the channels we focus on for off-page based on the results of this analysis. Our research-oriented approach ensures that results are consistently achieved rather than taking a “one-size fits all” approach.\nYou can expect your SEO campaign to be a long-term investment, often requiring 3-6 months before seeing a return. We are upfront about this, but what sets us apart from the competition are the long-term results we achieve. Instead of getting your name ranked and then subsequently losing it, we work to establish your brand as an authority, encouraging search engines to consistently feature your pages at the top of the results.\";}i:1;a:2:{s:9:\"faq_title\";s:48:\"How does Doodle Digital charge for SEO services?\";s:15:\"faq_description\";s:633:\"Each campaign is different. Two companies of similar size in similar industries are still going to have vastly different approaches to achieve similar results. We strive to personalize each campaign to the unique objectives and challenges our clients face in getting their website ranked in the search results provided by the major search engines. We are upfront about the costs associated with each campaign. We can provide your business with a custom quote with an outline of the costs, the time commitment from Doodle Digital, and when your brand will begin seeing the results of our hard work and dedication to your SEO campaign.\";}i:2;a:2:{s:9:\"faq_title\";s:70:\"How do I know if I am the right fit for Doodle Digital\'s SEO services?\";s:15:\"faq_description\";s:730:\"We are the right fit for businesses which understand that meaningful marketing takes time to achieve. Search engine optimization requires long-term commitment and effort to make it work and to make those results last. Some SEO companies opt to use short-term strategies to get a high placement for a quick fee, but in nearly all of these cases the placements do not last.\nAs major search engines adjust their algorithms to combat link schemes, these strategies do not create lasting results and end up costing more of a headache for clients. We focus on building for the long-term. If you are looking to increase your organic traffic and have a lasting increase for your most competitive keywords, Doodle Digital is right for you.\";}}}i:1;a:2:{s:17:\"faq_section_title\";s:23:\"Social Media Management\";s:4:\"faqs\";a:3:{i:0;a:2:{s:9:\"faq_title\";s:75:\"How is your social media service unique to those offered by other agencies?\";s:15:\"faq_description\";s:597:\"When we take on a social media project for a client, we invest ourselves into their social presence. Each project we take on is an opportunity to put to the test skills our professionals have been developing over years. We take the time to perform research on each brand we represent to understand who they are, what sets them apart from their competition, and who their core audience is. We then identify the best methods of communicating with that audience through social media in order to drive the right type of engagement, leading to the highest possible sales conversions for their campaign.\";}i:1;a:2:{s:9:\"faq_title\";s:57:\"How does Doodle Digital charge for social media services?\";s:15:\"faq_description\";s:438:\"Each project we take on is a unique challenge and therefore requires an initial analysis to determine the right route to take. We provide a free quote for all potential projects to clearly define what it is that Digital Marketing Agency will be doing and at what cost. Since each project is different, we are unable to provide a standardized method for pricing. We’ll outline exactly what the campaign will cost and in what time period.\";}i:2;a:2:{s:9:\"faq_title\";s:79:\"How do I know if I am the right fit for Doodle Digital\'s social media services?\";s:15:\"faq_description\";s:731:\"We work with businesses that are looking to achieve long-term success in social media over short-term campaigns meant to simply increase numbers. For social media to work, it requires dedication from both the brand name being represented and the team working to make social media work. We are dedicated to the long-term success of each social media campaign we tackle, and we want our clients to be as dedicated to taking advantage of those results. If you’re looking for a wholesale social media service or are simply looking to inflate your presence on social media, Digital Marketing Agency might not be the right fit for you. However, if you’re looking to make social media work for you, Doodle Digital is the right choice.\";}}}i:2;a:2:{s:17:\"faq_section_title\";s:24:\"Web Design & Development\";s:4:\"faqs\";a:3:{i:0;a:2:{s:9:\"faq_title\";s:91:\"How are your web design and development services unique to those offered by other agencies?\";s:15:\"faq_description\";s:642:\"Your website is often your potential client’s first impression. We understand the importance of that first impression and guarantee the work that we do. Each website is built from the ground up based on your unique requirements and objectives. Before we take on a project, we want to understand the project in addition to understanding what you want to achieve with that website. Our approach to building the website will be laid out up front with timelines and any requirements from your said at the start of the campaign to make the design and/or development process as seamless as possible. We meet our deadlines and exceed expectations.\";}i:1;a:2:{s:9:\"faq_title\";s:71:\"How does Doodle Digital charge for web design and development services?\";s:15:\"faq_description\";s:214:\"Website design and development are completely customized here at Doodle Digital. A detailed proposal including design, development milestones along with payment terms will be presented prior to any work being done.\";}i:2;a:2:{s:9:\"faq_title\";s:93:\"How do I know if I am the right fit for Doodle Digital\'s web design and development services?\";s:15:\"faq_description\";s:526:\"You’re a great fit if you’re looking to build something for the long-term. We’re not interested in wholesale design and development. Each website is built to your unique requirements and specifications to give you the right website from the very start. If you’re looking for a unique solution to your design and development woes solved professionally, we are the right fit.\nStill got things to know about our services or custom digital marketing packages? Just spend a few seconds and send us a message or make a call.\";}}}}s:13:\"faq_seo_title\";s:70:\"FAQs & Answers | Best Answers From A Reliable Digital Marketing Agency\";s:17:\"faq_meta_keywords\";s:24:\"Digital Marketing Agency\";s:20:\"faq_meta_description\";s:193:\"We know people might have questions to ask as we are a digital marketing agency providing services and information. Read our answers to questions frequently asked by our visitors and customers.\";}', 1, 1, 1, 2, NULL, '2018-10-31 11:21:50'),
(65, 'currency', 'BDT', NULL, NULL, 0, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `style` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `style`, `title`, `description`, `image`, `extra`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(3, 'slide4', 'EXPERIENCE THE FUTURE <span> </span>', '\"OUR AIM IS TO PROVIDE THE BEST IT SERVICE IN YOUR EVERY NEED AND LET YOU EXPERIENCE THE FUTURE.”', 'nextpage.jpg', 'a:2:{s:12:\"button_label\";a:2:{i:0;s:10:\"Contact us\";i:1;s:16:\"View Our Package\";}s:11:\"button_link\";a:2:{i:0;s:8:\"/contact\";i:1;s:39:\"/packages/detail/social-media-marketing\";}}', 1, 1, 1, '2018-03-12 22:27:58', '2018-11-05 18:49:29'),
(4, 'slide1', '<span> E-Commerce Service <small></small></span><span>  </span><span>  </span>', 'Why still offline. Go Online. Break the business limits. Reach the customers out of your city, state and country. Build a hassle free business. Next Page Technology Ltd build you a world class e commerce application for your brand .', 'ecommerce-2140603_1.jpg', 'a:2:{s:12:\"button_label\";a:2:{i:0;s:10:\"Contact us\";i:1;s:16:\"View Our Package\";}s:11:\"button_link\";a:2:{i:0;s:8:\"/contact\";i:1;s:32:\"/packages/detail/video-marketing\";}}', 1, 1, 1, '2018-03-12 22:33:32', '2018-11-05 20:40:07'),
(5, 'slide2', 'Looking For <br/>Killer Content?', 'It is about doing research, gathering knowledge, and doing all the hard work that our zealous writers do every day to be part of the community of experts whose valuable skills and insights set the standard and shape the way people get the most of their time spent on reading the content.', '15_2.jpg', 'a:2:{s:12:\"button_label\";a:2:{i:0;s:10:\"Contact us\";i:1;s:16:\"View Our Package\";}s:11:\"button_link\";a:2:{i:0;s:8:\"/contact\";i:1;s:40:\"/packages/detail/content-writing-service\";}}', 1, 1, 1, '2018-03-12 22:36:49', '2018-10-31 04:07:11'),
(6, 'slide3', 'Need A Reliable Resilient <span>SEO</span>?', 'It is about doing research, gathering knowledge, and doing all the hard work that our zealous writers do every day to be part of the community of experts whose valuable skills and insights set the standard and shape the way people get the most of their time spent on reading the content.', '18_4.jpg', 'a:2:{s:12:\"button_label\";a:2:{i:0;s:10:\"Contact us\";i:1;s:16:\"View Our Package\";}s:11:\"button_link\";a:2:{i:0;s:8:\"/contact\";i:1;s:26:\"/packages/detail/local-seo\";}}', 1, 1, 1, '2018-03-12 22:41:32', '2018-10-31 04:06:56'),
(7, 'slide5', 'Affiliate Site That <span>Earns?</span>', 'We can meet all of today’s demands Lucrative Niche Selection,Smart Keyword Research, Readable & Useful Content, A Beautiful, Responsive & Fast-Loading Web Design & Development, Complete SEO Services.', '17_5.jpg', 'a:2:{s:12:\"button_label\";a:2:{i:0;s:10:\"Contact Us\";i:1;s:16:\"View Our Package\";}s:11:\"button_link\";a:2:{i:0;s:8:\"/contact\";i:1;s:46:\"/packages/detail/amazon-niche-website-building\";}}', 1, 1, 1, '2018-03-12 22:44:13', '2018-10-31 04:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Disabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'App\\Model\\Common\\Blog', '2017-10-05 05:11:48', '2017-10-05 05:11:48'),
(2, 3, 2, 'App\\Model\\Common\\Blog', '2017-10-05 05:11:48', '2017-10-05 05:11:48'),
(3, 2, 2, 'App\\Model\\Common\\Blog', '2017-10-05 05:11:48', '2017-10-05 05:11:48'),
(4, 3, 2, 'App\\Model\\Common\\Blog', '2017-10-05 05:11:48', '2017-10-05 05:11:48'),
(7, 2, 2, 'App\\Model\\Common\\Cases', '2017-10-14 22:23:39', '2017-10-14 22:23:39'),
(8, 6, 3, 'App\\Model\\Common\\Blog', '2018-01-05 21:27:45', '2018-01-05 21:27:45'),
(9, 7, 3, 'App\\Model\\Common\\Blog', '2018-01-05 21:27:45', '2018-01-05 21:27:45'),
(10, 8, 3, 'App\\Model\\Common\\Blog', '2018-01-05 21:27:45', '2018-01-05 21:27:45'),
(11, 5, 1, 'App\\Model\\Common\\Blog', '2017-10-05 05:10:27', '2017-10-05 05:10:27'),
(12, 2, 4, 'App\\Model\\Common\\Blog', '2018-01-05 21:27:35', '2018-01-05 21:27:35'),
(13, 2, 3, 'App\\Model\\Common\\Cases', '2017-10-14 21:46:13', '2017-10-14 21:46:13'),
(14, 9, 3, 'App\\Model\\Common\\Cases', '2017-10-14 21:46:13', '2017-10-14 21:46:13'),
(27, 3, 5, 'App\\Model\\Common\\Cases', '2018-02-28 03:03:12', '2018-02-28 03:03:12'),
(28, 3, 5, 'App\\Model\\Common\\Blog', '2018-01-09 01:53:10', '2018-01-09 01:53:10'),
(36, 9, 7, 'App\\Model\\Common\\Blog', '2018-01-09 01:53:02', '2018-01-09 01:53:02'),
(37, 9, 6, 'App\\Model\\Common\\Blog', '2018-01-09 01:53:06', '2018-01-09 01:53:06'),
(40, 14, 8, 'App\\Model\\Common\\Blog', '2018-03-03 02:04:58', '2018-03-03 02:04:58'),
(41, 14, 6, 'App\\Model\\Common\\Cases', '2018-03-14 22:28:17', '2018-03-14 22:28:17'),
(42, 14, 8, 'App\\Model\\Common\\Blog', '2018-03-03 02:04:58', '2018-03-03 02:04:58'),
(44, 14, 4, 'App\\Model\\Common\\Cases', '2018-02-05 01:59:40', '2018-02-05 01:59:40'),
(45, 14, 8, 'App\\Model\\Common\\Blog', '2018-03-03 02:04:58', '2018-03-03 02:04:58'),
(46, 15, 7, 'App\\Model\\Common\\Cases', '2018-04-05 11:03:12', '2018-04-05 11:03:12'),
(47, 15, 8, 'App\\Model\\Common\\Cases', '2018-04-05 10:58:45', '2018-04-05 10:58:45'),
(48, 15, 9, 'App\\Model\\Common\\Cases', '2018-04-05 10:58:45', '2018-04-05 10:58:45'),
(49, 15, 10, 'App\\Model\\Common\\Cases', '2018-04-05 10:58:45', '2018-04-05 10:58:45'),
(50, 15, 11, 'App\\Model\\Common\\Cases', '2018-04-04 05:03:01', '2018-04-04 05:03:01'),
(58, 15, 9, 'App\\Model\\Common\\Blog', '2018-12-11 03:43:54', '2018-12-11 03:43:54'),
(59, 16, 9, 'App\\Model\\Common\\Blog', '2018-12-11 03:43:54', '2018-12-11 03:43:54'),
(60, 17, 9, 'App\\Model\\Common\\Blog', '2018-12-11 03:43:54', '2018-12-11 03:43:54'),
(61, 18, 9, 'App\\Model\\Common\\Blog', '2018-12-11 03:43:54', '2018-12-11 03:43:54'),
(63, 20, 10, 'App\\Model\\Common\\Blog', '2018-12-11 03:45:08', '2018-12-11 03:45:08'),
(64, 21, 10, 'App\\Model\\Common\\Blog', '2018-12-11 03:45:08', '2018-12-11 03:45:08'),
(65, 22, 11, 'App\\Model\\Common\\Blog', '2018-12-11 03:44:45', '2018-12-11 03:44:45'),
(66, 15, 11, 'App\\Model\\Common\\Blog', '2018-12-11 03:44:45', '2018-12-11 03:44:45'),
(68, 24, 12, 'App\\Model\\Common\\Blog', '2018-12-11 03:44:17', '2018-12-11 03:44:17'),
(69, 25, 12, 'App\\Model\\Common\\Blog', '2018-12-11 03:44:17', '2018-12-11 03:44:17'),
(70, 16, 13, 'App\\Model\\Common\\Blog', '2018-12-11 04:01:06', '2018-12-11 04:01:06'),
(71, 26, 13, 'App\\Model\\Common\\Blog', '2018-12-11 04:01:06', '2018-12-11 04:01:06'),
(72, 27, 13, 'App\\Model\\Common\\Blog', '2018-12-11 04:01:06', '2018-12-11 04:01:06'),
(73, 28, 14, 'App\\Model\\Common\\Blog', '2018-12-11 03:43:03', '2018-12-11 03:43:03'),
(74, 29, 14, 'App\\Model\\Common\\Blog', '2018-12-11 03:43:03', '2018-12-11 03:43:03'),
(82, 37, 9, 'App\\Model\\Common\\Blog', '2018-12-11 03:43:54', '2018-12-11 03:43:54'),
(84, 38, 12, 'App\\Model\\Common\\Portfolio', '2018-12-13 06:26:34', '2018-12-13 06:26:34'),
(85, 39, 12, 'App\\Model\\Common\\Portfolio', '2018-12-13 06:26:34', '2018-12-13 06:26:34'),
(86, 38, 10, 'App\\Model\\Common\\Portfolio', '2018-12-11 03:40:38', '2018-12-11 03:40:38'),
(87, 40, 10, 'App\\Model\\Common\\Portfolio', '2018-12-11 03:40:38', '2018-12-11 03:40:38'),
(88, 38, 13, 'App\\Model\\Common\\Portfolio', '2018-12-13 07:07:14', '2018-12-13 07:07:14'),
(89, 41, 13, 'App\\Model\\Common\\Portfolio', '2018-12-13 07:07:14', '2018-12-13 07:07:14'),
(90, 42, 13, 'App\\Model\\Common\\Portfolio', '2018-12-13 07:07:14', '2018-12-13 07:07:14'),
(91, 43, 13, 'App\\Model\\Common\\Portfolio', '2018-12-13 07:07:14', '2018-12-13 07:07:14'),
(96, 38, 15, 'App\\Model\\Common\\Portfolio', '2018-12-13 07:59:43', '2018-12-13 07:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `description`, `image`, `slug`, `views`, `total_posts`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(15, 'Facebook', NULL, NULL, 'facebook', 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 03:53:25', '2018-03-20 22:35:13'),
(16, 'Twitter', NULL, NULL, 'twitter', 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 03:53:25', '2018-03-20 22:35:13'),
(17, 'Instagram', NULL, NULL, 'instagram', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 03:53:25', '2018-03-20 22:35:13'),
(18, 'Pinterest', NULL, NULL, 'pinterest', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 03:53:25', '2018-03-20 22:35:13'),
(20, 'Viral video', NULL, NULL, 'viral-video', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 03:57:02', '2018-03-20 03:57:02'),
(21, 'Killer video', NULL, NULL, 'killer-video', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 03:57:02', '2018-03-20 03:57:02'),
(22, 'Social Media', NULL, NULL, 'social-media', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 04:00:35', '2018-03-20 04:00:35'),
(24, 'Press release', NULL, NULL, 'press-release', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 04:06:59', '2018-03-20 04:06:59'),
(25, 'marketing press release', NULL, NULL, 'marketing-press-release', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 04:06:59', '2018-03-20 04:06:59'),
(26, 'twitter marketing', NULL, NULL, 'twitter-marketing', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 04:12:18', '2018-03-20 04:12:18'),
(27, 'twitter ads', NULL, NULL, 'twitter-ads', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 04:12:18', '2018-03-20 04:12:18'),
(28, 'Off-page optimization', NULL, NULL, 'off-page-optimization', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 04:15:46', '2018-03-20 04:15:46'),
(29, 'Black Hat SEO', NULL, NULL, 'black-hat-seo', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 04:15:46', '2018-03-20 04:15:46'),
(37, 'Google+', NULL, NULL, 'google', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 22:59:29', '2018-03-20 22:59:29'),
(38, 'PHP', NULL, NULL, 'php', 0, 5, NULL, NULL, NULL, 1, NULL, 1, '2018-12-10 22:33:03', '2018-12-13 07:59:43'),
(39, 'MySql', NULL, NULL, 'mysql', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-12-10 22:33:03', '2018-12-10 22:33:03'),
(40, 'Laravel', NULL, NULL, 'laravel', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-12-10 23:12:41', '2018-12-10 23:12:41'),
(41, 'WordPress', NULL, NULL, 'wordpress', 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-12-13 07:06:19', '2018-12-13 07:06:21'),
(42, 'HTML', NULL, NULL, 'html', 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-12-13 07:06:19', '2018-12-13 07:06:21'),
(43, 'CSS', NULL, NULL, 'css', 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-12-13 07:06:19', '2018-12-13 07:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` double(5,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 = Fixed and 2 = Percentage',
  `created_by` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1=Completed, 2=Processing, 3=Pending, 4=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `country`, `tax`, `type`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tax for BD', 'Bangladesh', 15.00, 2, 1, 1, 2, '2017-11-19 02:33:20', '2017-11-19 02:39:03'),
(2, 'Tax for USA', 'USA', 100.00, 1, 1, 1, 1, '2017-11-19 02:38:47', '2017-11-19 23:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1=Solved, 2=Processing, 3=Pending, 4=Cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `order_id`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(3, 2, 11, 'BD180319ANWB11 is not completed yet.', 'We adopt diversified techniques and offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.', 1, '2018-03-19 02:41:50', '2018-04-01 02:02:07'),
(4, 2, 11, 'offer optimizations to improve the SEO perform', 'offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.', 1, '2018-03-21 03:46:49', '2018-04-01 02:50:51'),
(5, 2, 11, 'offer', 'offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.', 1, '2018-03-21 03:48:33', '2018-04-01 02:50:53'),
(6, 2, 11, 'sfasd', 'fasdfasdf', 1, '2018-03-21 04:11:20', '2018-04-01 02:50:55'),
(7, 2, 11, 'Test', 'tested', 1, '2018-04-01 02:07:11', '2018-04-01 02:50:57'),
(8, 2, 7, 'Long or short, every trip to the first page of search engine involves proper coordination and implementation of multiple phases', 'dsfsfsadf', 1, '2018-04-01 02:42:57', '2018-04-01 02:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_details`
--

CREATE TABLE `tickets_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets_details`
--

INSERT INTO `tickets_details` (`id`, `ticket_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(3, 3, 2, 'I did not get your response', '2018-03-19 02:42:49', '2018-03-19 02:42:49'),
(4, 3, 2, 'rank high on Google and Bing in just a few months after the indexation.', '2018-03-21 03:43:15', '2018-03-21 03:43:15'),
(5, 5, 1, 'ing in just a few months after the indexation.', '2018-03-21 04:07:01', '2018-03-21 04:07:01'),
(6, 3, 1, 'ing in just a few months after the indexation.ing in just a few months after the indexation.', '2018-03-21 04:07:35', '2018-03-21 04:07:35'),
(7, 3, 1, 'ing in just a few months after the indexation. ing in just a few months after the indexation.', '2018-03-21 04:08:30', '2018-03-21 04:08:30'),
(8, 3, 1, 'ing in just a few months after the indexation. ing in just a few months after the indexation.ing in just a few months after the indexation.ing in just a few months after the indexation.ing in just a few months after the indexation.ing in just a few months after the indexation.', '2018-03-21 04:08:38', '2018-03-21 04:08:38'),
(9, 3, 2, 'We adopt diversified techniques and offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.We adopt diversified techniques and offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.We adopt diversified techniques and offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.We adopt diversified techniques and offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.We adopt diversified techniques and offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.', '2018-03-21 04:55:26', '2018-03-21 04:55:26'),
(10, 3, 1, 'We adopt diversified techniques and offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.We adopt diversified techniques and offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.We adopt diversified techniques and offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.We adopt diversified techniques and offer optimizations to improve the SEO performance of our clients’ businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.', '2018-03-21 04:55:51', '2018-03-21 04:55:51'),
(11, 3, 2, 'test message', '2018-03-31 21:31:57', '2018-03-31 21:31:57'),
(12, 3, 2, 'businesses as their sites likely rank high on Google and Bing in just a few months after the indexation.', '2018-03-31 22:20:59', '2018-03-31 22:20:59'),
(13, 3, 2, 'asdfsadf asd fasd asdf sadf', '2018-03-31 22:36:45', '2018-03-31 22:36:45'),
(14, 3, 2, 'dsgdf ds gherterter', '2018-03-31 22:37:38', '2018-03-31 22:37:38'),
(15, 3, 2, 'dsgdf ds gherterterasdfsadf', '2018-03-31 22:38:18', '2018-03-31 22:38:18'),
(16, 3, 2, 'asdfasdf', '2018-03-31 22:39:43', '2018-03-31 22:39:43'),
(17, 3, 2, 'tested', '2018-03-31 22:40:58', '2018-03-31 22:40:58'),
(18, 3, 2, 'sfdas wa rwer wer', '2018-03-31 22:41:36', '2018-03-31 22:41:36'),
(19, 3, 2, 'asdf sadfwerwers  sdfasdf', '2018-03-31 22:43:24', '2018-03-31 22:43:24'),
(20, 3, 2, 'fasdfsadftewr er tewrt er', '2018-03-31 22:43:29', '2018-03-31 22:43:29'),
(21, 3, 2, 'testedsdfasdf', '2018-03-31 23:02:41', '2018-03-31 23:02:41'),
(22, 3, 2, 'hi how are you?', '2018-03-31 23:54:14', '2018-03-31 23:54:14'),
(23, 3, 2, 'tested by nme', '2018-04-01 00:17:36', '2018-04-01 00:17:36'),
(24, 3, 1, 'reply from admin', '2018-04-01 00:47:46', '2018-04-01 00:47:46'),
(25, 3, 2, 'hi', '2018-04-01 00:48:01', '2018-04-01 00:48:01'),
(26, 3, 1, 'hello', '2018-04-01 00:48:12', '2018-04-01 00:48:12'),
(27, 3, 1, 'what\'s up?', '2018-04-01 00:48:31', '2018-04-01 00:48:31'),
(28, 3, 1, 'thanks', '2018-04-01 00:52:09', '2018-04-01 00:52:09'),
(29, 3, 1, 'tested vbasdfsad', '2018-04-01 00:52:34', '2018-04-01 00:52:34'),
(30, 3, 1, 'ok thanks', '2018-04-01 00:54:08', '2018-04-01 00:54:08'),
(31, 3, 1, 'test', '2018-04-01 01:18:01', '2018-04-01 01:18:01'),
(32, 3, 1, 'asdfsad sadf werwerewr', '2018-04-01 01:19:45', '2018-04-01 01:19:45'),
(33, 3, 1, 'asdfsadfaser werw er wer', '2018-04-01 01:20:00', '2018-04-01 01:20:00'),
(34, 3, 2, 'tested from frontend', '2018-04-01 01:53:36', '2018-04-01 01:53:36'),
(35, 3, 1, 'tested from backend', '2018-04-01 01:54:00', '2018-04-01 01:54:00'),
(36, 3, 2, 'fronen end', '2018-04-01 01:54:59', '2018-04-01 01:54:59'),
(37, 3, 1, 'backend', '2018-04-01 01:55:14', '2018-04-01 01:55:14'),
(38, 3, 1, 'Is your problem solved.', '2018-04-01 02:01:00', '2018-04-01 02:01:00'),
(39, 3, 2, 'No', '2018-04-01 02:01:08', '2018-04-01 02:01:08'),
(40, 6, 1, 'tested', '2018-04-01 02:04:29', '2018-04-01 02:04:29'),
(41, 7, 1, 'are you there?', '2018-04-01 02:40:12', '2018-04-01 02:40:12'),
(42, 7, 2, 'yeah', '2018-04-01 02:41:28', '2018-04-01 02:41:28'),
(43, 8, 2, 'tested', '2018-04-01 02:43:18', '2018-04-01 02:43:18'),
(44, 8, 1, 'tested', '2018-04-01 02:43:27', '2018-04-01 02:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `auth_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_paid` float(15,2) DEFAULT '0.00',
  `street` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=Active, 2=Pending, 3=Cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `auth_id`, `username`, `email`, `firstname`, `lastname`, `job_title`, `company`, `mobile`, `password`, `image`, `total_paid`, `street`, `city`, `zip`, `country`, `state`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin@doodledigital.net', 'James V.', 'Langston', 'Admn', 'Doodle Digital', '01715892032', '$2y$10$hk3kfkX8ac3Am5KLigiR0ebEaSWEluv5N2h7Tt6txCB5WDnJMXp3i', 'images.png', 0.00, 'mirpur', 'dhaka', '1230', 'Bangladesh', 'Dhaka', 'EfFNLQ2XZPCFlyAiKQB0858krPwztdazx8V63dYBAk5tCpXM8np8Q0jkTCgz', 1, NULL, '2018-03-13 22:26:43'),
(2, 'gp_109219277934386728335', 'mizan_sohag', 'engr.mrksohag@gmail.com', 'Mizanur Rahman', 'Khan', 'Project Manager', 'Doodle Digital', '1715892032', '$2y$10$mfoM.ufXSlxsIIhy/DbgJOKNMe.Br0JgreZjIeUMhevR11XI81AT6', '26239246_1794661443900928_2145373980689872866_n.jpg', 2599.00, '486 3rd floor, Greenway, wireless Gate, Moghbazar, asdf, asdf', 'Dhaka', '1217', 'Bangladesh', 'Dhaka', 'JfqnZdQBQKGFHlfVRFXlWx5ZWXmVfcYpAOOntTCz2bWFPvhnuA3H7vUk4n3B', 1, '2017-10-30 03:49:57', '2018-03-19 02:40:59'),
(4, 'gp_791117384409497', 'abrasel600', 'abrasel600@gmail.com', 'Abdur', 'Rasel', NULL, NULL, '1755167600', '$2y$10$BXX4POGJS8W0EO1FfGjTwuTV8JW63avZCzmuzeO22voDD0zXdLlui', 'images.png', 0.00, 'Mirpur', 'Dhaka', '1209', 'Bangladesh', 'Dhaka', NULL, 1, '2018-01-03 03:18:12', '2018-03-18 22:33:29'),
(5, NULL, 'admin@gmail.com', 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$IE1ZXvIUSA5bZJeIqaXTIOaQQmC75/v4Oth/ySVNeTQyWq5HjOKGO', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, '3ZDaRsmIV4o7hEzXNoYBzoyrgXiUHtO7p6WFsqtdwG5wypU3PJ1T4pvuWsCC', 1, '2018-11-04 17:30:30', '2018-11-04 17:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `users_metas`
--

CREATE TABLE `users_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_metas`
--

INSERT INTO `users_metas` (`id`, `user_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'user_online_status', '1', '2017-10-02 22:57:57', '2017-10-02 22:57:57'),
(2, 1, 'front_user_online_status', '0', '2017-10-02 23:04:06', '2017-10-02 23:04:06'),
(3, 1, 'front_user_last_activity', '2018-03-19 04:31:34', '2017-10-02 23:04:06', '2018-03-18 22:31:34'),
(5, 1, 'mobile2', '01715892032', '2017-10-02 23:25:02', '2017-10-02 23:25:02'),
(6, 1, 'gender', 'Male', '2017-10-02 23:25:02', '2017-11-18 23:40:10'),
(7, 1, 'skype', 'smddtech', '2017-10-02 23:25:02', '2017-12-07 00:56:42'),
(8, 1, 'whats_app', '01715892032', '2017-10-02 23:25:02', '2017-10-02 23:25:02'),
(9, 1, 'street', 'mirpur', '2017-10-02 23:25:02', '2017-10-02 23:25:02'),
(10, 1, 'city', 'dhaka', '2017-10-02 23:25:02', '2017-10-02 23:25:02'),
(11, 1, 'zip', '1230', '2017-10-02 23:25:02', '2017-10-02 23:25:02'),
(12, 1, 'state', 'Dhaka', '2017-10-02 23:25:02', '2017-10-02 23:25:02'),
(13, 1, 'country', 'Bangladesh', '2017-10-02 23:25:02', '2017-10-02 23:25:02'),
(14, 1, 'extra_note', NULL, '2017-10-02 23:25:02', '2017-10-02 23:25:02'),
(16, 2, 'front_user_online_status', '0', '2017-10-30 03:50:03', '2017-10-30 03:50:03'),
(17, 2, 'front_user_last_activity', '2018-04-04 09:24:32', '2017-10-30 03:50:03', '2018-04-04 03:24:32'),
(30, 9, 'gender', '1', '2017-11-12 22:23:34', '2017-11-12 22:23:34'),
(31, 9, 'birthday', '1991-3-16', '2017-11-12 22:23:35', '2017-11-12 22:23:35'),
(32, 9, 'country', 'Chittagong', '2017-11-12 22:23:35', '2017-11-12 22:23:35'),
(33, 9, 'city', 'Chandpur', '2017-11-12 22:23:35', '2017-11-12 22:23:35'),
(34, 9, 'extra_note', 'I m vary interested for knowing something,For what i didn\'t know ??????????????????????????????????????????????...................', '2017-11-12 22:23:35', '2017-11-12 22:23:35'),
(35, 10, 'gender', '1', '2017-11-12 22:27:28', '2017-11-12 22:27:28'),
(36, 10, 'birthday', '1991-3-16', '2017-11-12 22:27:28', '2017-11-12 22:27:28'),
(37, 10, 'country', 'Chittagong', '2017-11-12 22:27:28', '2017-11-12 22:27:28'),
(38, 10, 'city', 'Chandpur', '2017-11-12 22:27:28', '2017-11-12 22:27:28'),
(39, 10, 'extra_note', 'I m vary interested for knowing something,For what i didn\'t know ??????????????????????????????????????????????...................', '2017-11-12 22:27:28', '2017-11-12 22:27:28'),
(40, 11, 'gender', '1', '2017-11-12 22:28:34', '2017-11-12 22:28:34'),
(41, 11, 'birthday', '1991-3-16', '2017-11-12 22:28:34', '2017-11-12 22:28:34'),
(42, 11, 'country', 'Chittagong', '2017-11-12 22:28:34', '2017-11-12 22:28:34'),
(43, 11, 'city', 'Chandpur', '2017-11-12 22:28:34', '2017-11-12 22:28:34'),
(44, 11, 'extra_note', 'I m vary interested for knowing something,For what i didn\'t know ??????????????????????????????????????????????...................', '2017-11-12 22:28:35', '2017-11-12 22:28:35'),
(45, 12, 'gender', '1', '2017-11-12 22:36:44', '2017-11-12 22:36:44'),
(46, 12, 'birthday', '1991-3-16', '2017-11-12 22:36:44', '2017-11-12 22:36:44'),
(47, 12, 'country', 'Chittagong', '2017-11-12 22:36:44', '2017-11-12 22:36:44'),
(48, 12, 'city', 'Chandpur', '2017-11-12 22:36:44', '2017-11-12 22:36:44'),
(49, 12, 'extra_note', 'I m vary interested for knowing something,For what i didn\'t know ??????????????????????????????????????????????...................', '2017-11-12 22:36:44', '2017-11-12 22:36:44'),
(50, 12, 'front_user_online_status', '0', '2017-11-12 22:37:25', '2017-11-12 22:37:25'),
(51, 12, 'front_user_last_activity', '2017-11-13 04:37:25', '2017-11-12 22:37:25', '2017-11-12 22:37:25'),
(52, 13, 'gender', '1', '2017-11-12 23:41:19', '2017-11-12 23:41:19'),
(53, 13, 'birthday', '1991-3-16', '2017-11-12 23:41:19', '2017-11-12 23:41:19'),
(54, 13, 'country', 'Chittagong', '2017-11-12 23:41:19', '2017-11-12 23:41:19'),
(55, 13, 'city', 'Chandpur', '2017-11-12 23:41:19', '2017-11-12 23:41:19'),
(56, 13, 'extra_note', 'I m vary interested for knowing something,For what i didn\'t know ??????????????????????????????????????????????...................', '2017-11-12 23:41:19', '2017-11-12 23:41:19'),
(57, 13, 'front_user_online_status', '0', '2017-11-12 23:41:32', '2017-11-12 23:41:32'),
(58, 13, 'front_user_last_activity', '2017-11-13 05:41:32', '2017-11-12 23:41:32', '2017-11-12 23:41:32'),
(59, 14, 'gender', '1', '2017-11-13 00:22:20', '2017-11-13 00:22:20'),
(60, 14, 'birthday', '1991-3-16', '2017-11-13 00:22:20', '2017-11-13 00:22:20'),
(61, 14, 'country', 'Chittagong', '2017-11-13 00:22:20', '2017-11-13 00:22:20'),
(62, 14, 'city', 'Chandpur', '2017-11-13 00:22:20', '2017-11-13 00:22:20'),
(63, 14, 'extra_note', 'I m vary interested for knowing something,For what i didn\'t know ??????????????????????????????????????????????...................', '2017-11-13 00:22:20', '2017-11-13 00:22:20'),
(64, 14, 'front_user_online_status', '0', '2017-11-13 00:22:48', '2017-11-13 00:22:48'),
(65, 14, 'front_user_last_activity', '2017-11-13 06:22:49', '2017-11-13 00:22:49', '2017-11-13 00:22:49'),
(66, 15, 'gender', '1', '2017-11-13 00:23:46', '2017-11-13 00:23:46'),
(67, 15, 'birthday', '1991-3-16', '2017-11-13 00:23:46', '2017-11-13 00:23:46'),
(68, 15, 'country', 'Chittagong', '2017-11-13 00:23:46', '2017-11-13 00:23:46'),
(69, 15, 'city', 'Chandpur', '2017-11-13 00:23:46', '2017-11-13 00:23:46'),
(70, 15, 'extra_note', 'I m vary interested for knowing something,For what i didn\'t know ??????????????????????????????????????????????...................', '2017-11-13 00:23:46', '2017-11-13 00:23:46'),
(71, 15, 'front_user_online_status', '0', '2017-11-13 00:23:53', '2017-11-13 00:23:53'),
(72, 15, 'front_user_last_activity', '2017-11-13 06:23:53', '2017-11-13 00:23:53', '2017-11-13 00:23:53'),
(73, 16, 'gender', '1', '2017-11-13 00:25:48', '2017-11-13 00:25:48'),
(74, 16, 'birthday', '1991-3-16', '2017-11-13 00:25:48', '2017-11-13 00:25:48'),
(75, 16, 'country', 'Chittagong', '2017-11-13 00:25:48', '2017-11-13 00:25:48'),
(76, 16, 'city', 'Chandpur', '2017-11-13 00:25:49', '2017-11-13 00:25:49'),
(77, 16, 'extra_note', 'I m vary interested for knowing something,For what i didn\'t know ??????????????????????????????????????????????...................', '2017-11-13 00:25:49', '2017-11-13 00:25:49'),
(78, 16, 'front_user_online_status', '0', '2017-11-13 00:26:00', '2017-11-13 00:26:00'),
(79, 16, 'front_user_last_activity', '2017-11-13 07:23:25', '2017-11-13 00:26:00', '2017-11-13 01:23:25'),
(80, 16, 'user_online_status', '1', '2017-11-13 00:46:17', '2017-11-13 00:46:17'),
(81, 17, 'gender', '1', '2017-11-13 01:31:55', '2017-11-13 01:31:55'),
(82, 17, 'birthday', '1991-3-16', '2017-11-13 01:31:55', '2017-11-13 01:31:55'),
(83, 17, 'country', 'Chittagong', '2017-11-13 01:31:55', '2017-11-13 01:31:55'),
(84, 17, 'city', 'Chandpur', '2017-11-13 01:31:55', '2017-11-13 01:31:55'),
(85, 17, 'extra_note', 'I m vary interested for knowing something,For what i didn\'t know ??????????????????????????????????????????????...................', '2017-11-13 01:31:55', '2017-11-13 01:31:55'),
(86, 17, 'front_user_online_status', '0', '2017-11-13 02:16:16', '2017-11-13 02:16:16'),
(87, 17, 'front_user_last_activity', '2017-11-13 09:15:32', '2017-11-13 02:16:16', '2017-11-13 03:15:32'),
(88, 18, 'extra_note', 'Project Manager at Get Web Inc. ltd', '2017-11-13 03:28:23', '2017-11-13 03:28:23'),
(89, 18, 'front_user_online_status', '0', '2017-11-13 03:28:35', '2017-11-13 03:28:35'),
(90, 18, 'front_user_last_activity', '2017-11-13 09:28:35', '2017-11-13 03:28:35', '2017-11-13 03:28:35'),
(91, 19, 'extra_note', 'Project Manager at Get Web Inc. ltd', '2017-11-13 03:32:00', '2017-11-13 03:32:00'),
(92, 19, 'front_user_online_status', '0', '2017-11-13 03:32:05', '2017-11-13 03:32:05'),
(93, 19, 'front_user_last_activity', '2017-11-13 09:32:05', '2017-11-13 03:32:05', '2017-11-13 03:32:05'),
(94, 20, 'extra_note', 'Project Manager at Get Web Inc. ltd', '2017-11-13 03:33:03', '2017-11-13 03:33:03'),
(95, 20, 'front_user_online_status', '0', '2017-11-13 03:33:08', '2017-11-13 03:33:08'),
(96, 20, 'front_user_last_activity', '2017-11-13 09:33:21', '2017-11-13 03:33:08', '2017-11-13 03:33:21'),
(97, 21, 'gender', '1', '2017-11-13 03:34:01', '2017-11-13 03:34:01'),
(98, 21, 'birthday', '1991-3-16', '2017-11-13 03:34:01', '2017-11-13 03:34:01'),
(99, 21, 'country', 'Chittagong', '2017-11-13 03:34:01', '2017-11-13 03:34:01'),
(100, 21, 'city', 'Chandpur', '2017-11-13 03:34:01', '2017-11-13 03:34:01'),
(101, 21, 'extra_note', 'I m vary interested for knowing something,For what i didn\'t know ??????????????????????????????????????????????...................', '2017-11-13 03:34:01', '2017-11-13 03:34:01'),
(102, 21, 'front_user_online_status', '0', '2017-11-13 03:34:08', '2017-11-13 03:34:08'),
(103, 21, 'front_user_last_activity', '2017-11-13 10:46:49', '2017-11-13 03:34:08', '2017-11-13 04:46:49'),
(104, 22, 'gender', '1', '2017-11-13 03:52:34', '2017-11-13 03:52:34'),
(105, 22, 'front_user_online_status', '0', '2017-11-13 03:52:37', '2017-11-13 03:52:37'),
(106, 22, 'front_user_last_activity', '2017-11-13 10:00:29', '2017-11-13 03:52:37', '2017-11-13 04:00:29'),
(107, 23, 'gender', '1', '2017-11-13 04:49:54', '2017-11-13 04:49:54'),
(108, 23, 'birthday', '1991-3-16', '2017-11-13 04:49:54', '2017-11-13 04:49:54'),
(109, 23, 'country', 'Chittagong', '2017-11-13 04:49:54', '2017-11-13 04:49:54'),
(110, 23, 'city', 'Chandpur', '2017-11-13 04:49:54', '2017-11-13 04:49:54'),
(111, 23, 'extra_note', 'I m vary interested for knowing something,For what i didn\'t know ??????????????????????????????????????????????...................', '2017-11-13 04:49:54', '2017-11-13 04:49:54'),
(112, 23, 'front_user_online_status', '0', '2017-11-13 04:52:05', '2017-11-13 04:52:05'),
(113, 23, 'front_user_last_activity', '2017-11-13 11:06:47', '2017-11-13 04:52:05', '2017-11-13 05:06:47'),
(114, 24, 'country', 'Bangladesh', '2017-11-13 21:23:48', '2017-11-13 21:23:48'),
(115, 24, 'extra_note', 'Project Manager at Get Wrb Inc. Ltd', '2017-11-13 21:23:48', '2017-11-13 21:23:48'),
(116, 24, 'front_user_online_status', '0', '2017-11-13 21:23:58', '2017-11-13 21:23:58'),
(117, 24, 'front_user_last_activity', '2017-11-14 03:27:57', '2017-11-13 21:23:58', '2017-11-13 21:27:57'),
(129, 4, 'gender', 'Male', '2018-01-03 03:18:19', '2018-03-18 22:33:10'),
(130, 7, 'state', 'Dhaka', '2018-03-02 21:48:40', '2018-03-02 21:48:40'),
(131, 4, 'mobile2', NULL, '2018-03-18 22:33:10', '2018-03-18 22:33:10'),
(132, 4, 'skype', NULL, '2018-03-18 22:33:11', '2018-03-18 22:33:11'),
(133, 4, 'whats_app', NULL, '2018-03-18 22:33:11', '2018-03-18 22:33:11'),
(134, 4, 'extra_note', NULL, '2018-03-18 22:33:11', '2018-03-18 22:33:11'),
(135, 2, 'mobile2', NULL, '2018-03-18 22:33:55', '2018-03-18 22:33:55'),
(136, 2, 'gender', 'Male', '2018-03-18 22:33:55', '2018-03-18 22:33:55'),
(137, 2, 'skype', NULL, '2018-03-18 22:33:55', '2018-03-18 22:33:55'),
(138, 2, 'whats_app', NULL, '2018-03-18 22:33:55', '2018-03-18 22:33:55'),
(139, 2, 'extra_note', NULL, '2018-03-18 22:33:55', '2018-03-18 22:33:55'),
(140, 2, 'user_online_status', '1', '2018-03-19 02:39:26', '2018-03-19 02:39:26'),
(141, 5, 'front_user_online_status', '0', '2018-11-04 17:31:17', '2018-11-04 17:31:17'),
(142, 5, 'front_user_last_activity', '2018-11-04 10:41:44', '2018-11-04 17:31:17', '2018-11-04 17:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `date`, `views`) VALUES
(1, '2018-01-20', 61),
(2, '2018-01-21', 13),
(3, '2018-02-22', 70),
(4, '2018-01-23', 20),
(5, '2018-01-24', 30),
(6, '2018-01-25', 10),
(7, '2018-01-26', 18),
(8, '2018-01-27', 34),
(9, '2018-01-28', 23),
(10, '2018-01-29', 24),
(11, '2018-01-30', 19),
(12, '2018-01-31', 34),
(13, '2018-02-01', 15),
(14, '2018-02-03', 1),
(15, '2018-02-04', 1),
(16, '2018-02-05', 12),
(17, '2018-02-06', 56),
(18, '2018-02-07', 38),
(19, '2018-02-08', 30),
(20, '2018-02-09', 23),
(21, '2018-02-10', 40),
(22, '2018-02-11', 27),
(23, '2018-02-12', 94),
(24, '2018-02-13', 30),
(25, '2018-02-14', 67),
(26, '2018-02-15', 30),
(27, '2018-02-16', 49),
(28, '2018-02-17', 29),
(29, '2018-02-18', 27),
(30, '2018-02-19', 25),
(31, '2018-02-20', 31),
(32, '2018-02-21', 33),
(33, '2018-02-23', 43),
(34, '2018-02-24', 14),
(35, '2018-02-25', 24),
(36, '2018-02-26', 33),
(37, '2018-02-27', 51),
(38, '2018-02-28', 4),
(39, '2018-03-01', 3),
(40, '2018-03-03', 5),
(41, '2018-03-04', 7),
(42, '2018-03-05', 1),
(43, '2018-03-12', 1),
(44, '2018-03-13', 3),
(45, '2018-03-14', 4),
(46, '2018-03-15', 4),
(47, '2018-03-18', 1),
(48, '2018-03-19', 3),
(49, '2018-03-20', 2),
(50, '2018-03-21', 2),
(51, '2018-03-28', 1),
(52, '2018-03-29', 1),
(53, '2018-04-01', 3),
(54, '2018-04-03', 4),
(55, '2018-04-04', 50),
(56, '2018-04-05', 103),
(57, '2018-04-06', 68),
(58, '2018-04-07', 6),
(59, '2018-10-31', 1),
(60, '2018-11-01', 6),
(61, '2018-11-03', 9),
(62, '2018-11-04', 12),
(63, '2018-11-05', 5),
(64, '2018-11-06', 1),
(65, '2018-11-08', 2),
(66, '2018-11-12', 3),
(67, '2018-11-14', 2),
(68, '2018-11-17', 2),
(69, '2018-11-17', 1),
(70, '2018-12-04', 5),
(71, '2018-12-05', 9),
(72, '2018-12-06', 4),
(73, '2018-12-08', 5),
(74, '2018-12-09', 24),
(75, '2018-12-10', 11),
(76, '2018-12-11', 12),
(77, '2018-12-12', 3),
(78, '2018-12-13', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_firstname_index` (`firstname`),
  ADD KEY `admins_lastname_index` (`lastname`),
  ADD KEY `admins_role_index` (`role_id`),
  ADD KEY `admins_status_index` (`status`);

--
-- Indexes for table `admins_metas`
--
ALTER TABLE `admins_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_metas_admin_id_index` (`admin_id`),
  ADD KEY `admins_metas_meta_key_index` (`meta_key`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_title_index` (`title`),
  ADD KEY `blogs_is_sticky_index` (`is_sticky`),
  ADD KEY `blogs_comment_enable_index` (`comment_enable`),
  ADD KEY `blogs_status_index` (`status`);

--
-- Indexes for table `careerapplies`
--
ALTER TABLE `careerapplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `careerapplies_career_id_index` (`career_id`),
  ADD KEY `careerapplies_status_index` (`status`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `careers_slug_unique` (`slug`),
  ADD KEY `careers_title_index` (`title`),
  ADD KEY `careers_start_date_index` (`start_date`),
  ADD KEY `careers_created_by_index` (`created_by`),
  ADD KEY `careers_status_index` (`status`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cases_slug_unique` (`slug`),
  ADD KEY `cases_status_index` (`status`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_title_index` (`title`(191)),
  ADD KEY `categories_status_index` (`status`);

--
-- Indexes for table `categoryables`
--
ALTER TABLE `categoryables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryables_category_id_index` (`category_id`),
  ADD KEY `categoryables_categoryable_id_index` (`categoryable_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_id_index` (`commentable_id`),
  ADD KEY `comments_p_c_id_index` (`p_c_id`),
  ADD KEY `comments_created_by_index` (`created_by`),
  ADD KEY `comments_status_index` (`status`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_status_index` (`status`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_status_index` (`status`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_slug_unique` (`slug`),
  ADD KEY `media_title_index` (`title`(191));

--
-- Indexes for table `media_permissions`
--
ALTER TABLE `media_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_permissions_media_id_index` (`media_id`),
  ADD KEY `media_permissions_user_id_index` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_index` (`user_id`),
  ADD KEY `orders_package_id_index` (`package_id`),
  ADD KEY `orders_net_total_index` (`net_total`),
  ADD KEY `orders_status_index` (`order_status`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_index` (`order_id`),
  ADD KEY `order_details_package_detail_id_index` (`package_detail_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_slug_unique` (`slug`),
  ADD KEY `packages_type_index` (`type`),
  ADD KEY `packages_status_index` (`status`);

--
-- Indexes for table `package_details`
--
ALTER TABLE `package_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_menu_title_index` (`menu_title`),
  ADD KEY `pages_page_title_index` (`page_title`),
  ADD KEY `pages_views_index` (`views`),
  ADD KEY `pages_created_by_index` (`created_by`),
  ADD KEY `pages_status_index` (`status`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_status_index` (`status`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_status_index` (`status`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_title_index` (`title`),
  ADD KEY `portfolios_status_index` (`status`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_buying_price_unique` (`buying_price`),
  ADD UNIQUE KEY `products_description_unique` (`description`),
  ADD KEY `products_title_index` (`title`),
  ADD KEY `products_slug_index` (`slug`),
  ADD KEY `products_batch_no_index` (`batch_no`),
  ADD KEY `products_selling_price_index` (`selling_price`),
  ADD KEY `products_status_index` (`status`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_name_index` (`name`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_status_index` (`status`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`),
  ADD KEY `services_title_index` (`title`),
  ADD KEY `services_status_index` (`status`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_option_name_unique` (`option_name`),
  ADD KEY `settings_created_by_index` (`created_by`),
  ADD KEY `settings_autoload_index` (`autoload`),
  ADD KEY `settings_status_index` (`status`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_index` (`created_by`),
  ADD KEY `sliders_status_index` (`status`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`),
  ADD KEY `subscribers_status_index` (`status`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggables_tag_id_index` (`tag_id`),
  ADD KEY `taggables_taggable_id_index` (`taggable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`),
  ADD KEY `tags_title_index` (`title`(191)),
  ADD KEY `tags_created_by_index` (`created_by`),
  ADD KEY `tags_status_index` (`status`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_status_index` (`status`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_index` (`user_id`),
  ADD KEY `tickets_order_id_index` (`order_id`),
  ADD KEY `tickets_status_index` (`status`);

--
-- Indexes for table `tickets_details`
--
ALTER TABLE `tickets_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_details_ticket_id_index` (`ticket_id`),
  ADD KEY `tickets_details_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD KEY `users_firstname_index` (`firstname`),
  ADD KEY `users_lastname_index` (`lastname`),
  ADD KEY `users_job_title_index` (`job_title`),
  ADD KEY `users_company_index` (`company`),
  ADD KEY `users_status_index` (`status`),
  ADD KEY `users_auth_id_index` (`auth_id`);

--
-- Indexes for table `users_metas`
--
ALTER TABLE `users_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_metas_user_id_index` (`user_id`),
  ADD KEY `users_metas_meta_key_index` (`meta_key`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitors_date_index` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admins_metas`
--
ALTER TABLE `admins_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `careerapplies`
--
ALTER TABLE `careerapplies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categoryables`
--
ALTER TABLE `categoryables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- AUTO_INCREMENT for table `media_permissions`
--
ALTER TABLE `media_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `package_details`
--
ALTER TABLE `package_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tickets_details`
--
ALTER TABLE `tickets_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_metas`
--
ALTER TABLE `users_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `careerapplies`
--
ALTER TABLE `careerapplies`
  ADD CONSTRAINT `careerapplies_career_id_foreign` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
