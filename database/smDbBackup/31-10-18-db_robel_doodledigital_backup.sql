-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2018 at 12:48 PM
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
-- Database: `db_robel_doodledigital_backup`
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
(1, 'mizan_sohag', 'engr.mrksohag@gmail.com', 'Mizanur Rahman', 'Khan', '$2y$10$BMU6s9C/aYqsKwoKqUU0tehalDekxY/uCOnxmlgTkVSH7f0wiq/HG', '7161adbcac49abc7f2a6fa43971897fc056e3ef141e683fb246bc6083a7d8d3d8a14fecc4a0524dcacfc99969da380c654f0b86711104e7017cc2e4f8d2d773a_1.png', 1, 1, 'KYLs4Jao7P8XBajErpCIGcmzlFpK01i9MytQxehzS7UrK0nyHbq3KlOocMNF', NULL, '2018-10-31 09:12:52'),
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
(1, 1, 'user_online_status', '0', '2017-10-30 00:54:29', '2018-04-05 10:23:41'),
(2, 1, 'user_last_activity', '2018-04-05 10:23:41', '2017-10-30 01:01:49', '2018-04-05 10:23:41'),
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
(9, 'How to Get or Attract Traffic on Social Media?', 'Getting social media traffic is more of a set of disciplined actions than just a particular objective. It requires proper plan with strategic approaches, and the combination of the right skills.', '<h2>Social Media Traffic Generation</h2>\r\n\r\n<p>One of the top challenges that today&rsquo;s B2B marketers undergo nowadays is leveraging social media traffic. Because you can consider social media as one of your first priorities for traffic, you have to invest the most of your time and efforts to get the most of it. You might provide some updates or come up with occasional tweets. But, that&rsquo;s not going to be enough, especially when you want to move the dial of your call and convey your appeal to the intended audiences.</p>\r\n\r\n<p>So, here are the finest techniques you can adopt to excel in drawing and gathering social media traffic, quality of course.</p>\r\n\r\n<h3>The Might of The Link/CTA:</h3>\r\n\r\n<p>It may seem obvious, but always include a link/CTA back to your website. It not only drives traffic but shows your reader what to do next. No matter how much someone likes your brand, if you don&#39;t ask them to visit your website, give them a compelling reason to, and make it easy, they are not likely to do it. So, always user social media as a teaser and include a website link for more information.</p>\r\n\r\n<p>Doing this may be difficult on platforms like Instagram and Vine, but you can always change and direct people to the link in your bio as companies like HubSpot do.</p>\r\n\r\n<h3>The Power of Images:</h3>\r\n\r\n<p>It is crucial to use images in your social media posts when sharing content, especially now that the majority of social media users are on mobile devices. Images are more eye-catching than text alone and they also take up more room in the timeline, helping you attract more attention. Also, the right image can help prospects visualize what the content is going to be about while also making a post more &quot;shareable.&quot;</p>\r\n\r\n<h3>Integration of Social Share Buttons:</h3>\r\n\r\n<p>It&#39;s great when you can drive a lot of social media traffic, but it&#39;s even better when other people do it for you. If your website doesn&#39;t already have social sharing buttons, you could be missing out on a lot of social media traffic that&#39;s generated from people already reading your blog!</p>\r\n\r\n<p>Social sharing buttons are those colorful buttons you see around the top or bottom of blog posts that allow you to share the page directly on the social media channel of your choice. They provide convenience to your buyer persona and act as a non-pushy tool that encourages social sharing.</p>\r\n\r\n<h3>Paid Promotion:</h3>\r\n\r\n<p>You may call it the step of Sponsored Content. The quickest way to drive more traffic from social media is through paid promotion. When you&#39;re executing on a solid social media strategy, paid promotion or &quot;sponsored content&quot; adds fuel to the fire. You can experiment with different targeting options (including location, gender, industry and interests on most profiles) to help expose new people to your content and promote new social media traffic.</p>\r\n\r\n<p>As the business models of social media platforms evolve, B2B marketers will likely have to pay to be seen. Facebook has been this way for a few years now and with the recent introduction of algorithmic timelines on Twitter and Instagram, this is likely a trend to continue.</p>\r\n\r\n<h3>Activity and Engagement:</h3>\r\n\r\n<p>Too many B2B brands are guilty of not updating their social media enough. The only way to keep your followers engaged is to post updates and interact with people on a regular basis. Otherwise, they are likely to forget about you.</p>\r\n\r\n<p>When we tell B2B marketers they aren&#39;t active enough on social media, their minds immediately picture a teenage girl glued to her phone as she posts non-stop selfies and updates on her every movement. We then assure them that being active doesn&#39;t require you to dedicate your life to social media.</p>\r\n\r\n<h3>Consistency:</h3>\r\n\r\n<p>If you study the B2B brands with the best marketing, you&#39;ll notice they are always consistent with their social media activity. Regularly posting high-quality, interesting content, and responding to comments keeps your page lively and engaging rather than a one-sided conversation.</p>\r\n\r\n<p>Honestly speaking, gathering social media traffic is a unified approach that stands on a set of tasks and a clear orientation. Once you can handle the above steps; you can certainly expect great outcomes.</p>', 'blog-thumbnail-5.jpg', 'how-to-get-or-attract-traffic-on-social-media', 0, 1, 0, 115, 0, 'Proven Techniques To Get Social Media Traffic | Latest Insights', 'Social media traffic', 'Different marketers put different efforts to come out successful in gathering Social media traffic. Use of CTA, images, paid promotion, consistency, etc. are useful. Learn more about social media traffic.', 1, 1, 1, '2018-03-15 00:26:29', '2018-10-31 08:32:08'),
(10, 'How To Viral A Video?', 'It always feels good to have created a video, performed some modifications and shared. As we you need to make a video viral, all you have to do is stick to some fundamental matters.', '<h2>Steps Required to Viral A Video</h2>\r\n\r\n<p>Do you want to make a video so popular that you can call it a viral piece? Then, read the following lines with patience.</p>\r\n\r\n<p>You have the right recipe with the right type and amount of ingredients. With all these in place, the only thing you can expect that the entire culinary process will become easier. The first few times you take an approach to get the cooking right will be challenging and so misleading that you have to wait for some time. So, you want to make a video viral?</p>\r\n\r\n<p>Let&rsquo;s get straight to the real business.</p>\r\n\r\n<h3>Keep your video sweet and short.</h3>\r\n\r\n<p>Short videos are good to become inspirational, educative, and engaging. For longer videos, you need to consider why you are going to spend so much of your time on something that is expensive and potentially not so effective for your purposes. But, it does not mean that longer videos are just bad. They are equally and sometimes more beneficial just when you are sure the video has a real value to offer your customers or viewers. Thus, you take the initial steps right to make a video viral.</p>\r\n\r\n<h3>Work to spread a single message.</h3>\r\n\r\n<p>Content that sounds simple, demonstrates clear, and feels succinct are really wonderful. For a high conversion copy or landing page, it is substantial. For a blog article that is super shareable, it is even more credible. For a potentially viral video, the fact is not only true but also compelling. Move ahead with a single message. Do not confuse your viewers with multiple messages which they find difficult to connect or understand.</p>\r\n\r\n<p>Make the title short, interesting, and symmetrical to your brand&rsquo;s purposes. Attention! About 50% of all video marketers fail to use a title that works. Use trendy, relevant keywords to optimize the video for search engines and video platforms like YouTube, Dailymotion, etc.</p>\r\n\r\n<h3>Offer value.</h3>\r\n\r\n<p>Nothing works better than something in the world of the Internet that provides value. Create videos that are intrinsically useful to people who you consider as your audience. No matter if you are trying to inform, educate or entertain. Adding values should be your central focus.</p>\r\n\r\n<h3>Be wary of format.</h3>\r\n\r\n<p>Increase the likelihood of your video&rsquo;s being viral by optimizing and modifying it for mobile devices and social sharing. The right format is critical to the acceptance of your videos on social media platforms. Be sure to keep the video at optimal resolutions with great sound. However, do not allow bigger file size.</p>\r\n\r\n<h3>Thumbnails matter.</h3>\r\n\r\n<p>A catchy thumbnail satisfies the curiosity and simultaneously draws the attention of thousands of your potential viewers. Don&rsquo;t fake this chance. A lot of video makers or spammy marketers use incorrect or duplicate thumbnails that ultimately end in the loss of genuine subscribers or future customers. Try to make thumbnail become the essence of your video so that viewers do not have to wait to get a grasp of what you are going to show them. It&rsquo;s a compulsion if you have to make a video viral.</p>\r\n\r\n<h3>Be careful about the use of text.</h3>\r\n\r\n<p>Some unconscious video marketers use text, compelling though, so unwisely that viewers feel distracted by the text. Sometimes, the text, even though it&rsquo;s useful, does not look clear. Remember, the text does not look great on some screens. Try to avoid using content this way. If you have to do it anyway, be serious about making a transition between the text and video content, so viewers do not feel like being lost in either of them.</p>\r\n\r\n<p>Remember that you can never know how long it will take you to make a video viral. But, you go through trials and errors while sticking to the job, and that&rsquo;s what is going to work in the end.</p>', 'blog-thumbnail-3.jpg', 'how-to-viral-a-video', 0, 0, 0, 2, 0, 'Fundamental Steps To Make A Video Viral | Learn How To Viral A Video', 'Make a video viral', 'For those trying to make a video viral, the key aspects include the making of short videos with valuable content, great title, and audio and an amazingly descriptive thumbnail. Learn more about a viral video!', 1, 1, 1, '2018-03-20 03:57:01', '2018-10-31 08:31:56'),
(11, 'Is Social Media Changing Our Lifestyle?', 'Social media platforms have been so active in our day-to-day life that we can barely think of going a day without the different channels of social media. Some are good and some are not.', '<h2>Effects of Social Media on Our Life</h2>\r\n\r\n<p>In a word, YES.</p>\r\n\r\n<p>Billions of people across the countries of the world are using one or another social media network every day. A large portion of them use the networks for just one purpose called socializing. Another fair share of the users is working to make a living using the platforms. The multifaceted uses of different social networks are the reasons why these virtual platforms are being overwhelmingly popular.</p>\r\n\r\n<p>People are talking, sharing, showing, working, and meeting on these media. Why wouldn&rsquo;t we even raise a debate whether or not social media is affecting our way of life? The only question that befits this context is how.</p>\r\n\r\n<p>In short, IN MANY WAYS. Keep reading&hellip;&hellip;</p>\r\n\r\n<p>&ldquo;NICE to have&rdquo; is an obsolete idea.</p>\r\n\r\n<p>If you look at a business that has its own vision, you will see social networks has gained a much higher position in the operational strategy of that business. Once, businesses used to feel that having access to a great media like Facebook or Twitter is good. Ask them the same question. The likely reply is going to be like this, &ldquo;Having a familiarity on any virtual network is an essential thing to ensure.&rdquo; So, nothing surprising the fact should be if you hear that your friend, once a Facebook enthusiast, has built a great career.</p>\r\n\r\n<p>&ldquo;BANKS of future&rdquo; is not a thing of the distant future.</p>\r\n\r\n<p>The ultimate thing first!</p>\r\n\r\n<p>It won&rsquo;t be an unbelievable thing to know that these networks are going to have an impact on people&rsquo;s prospects to get a loan. Banking relationships are being heavily transformed by these media. Think about customer service or online money transactions. Many things from &lsquo;this&rsquo; to &lsquo;that&rsquo; of the financial landscape have a greater chance of being transformed, and social media will likely be the major player.</p>\r\n\r\n<p>&ldquo;Change in HEALTHCARE delivery&rdquo; is only a matter of time.</p>\r\n\r\n<p>If you ask which factor outside the public health domain is mostly responsible for the changes in healthcare in recent times, the interference of social media is the only answer we have found after comprehensive research sessions. A large number of people find social channels convenient and proactive to share their information quite rapidly.</p>\r\n\r\n<p>Health experts may not be available all the time. Social platforms being two-way places allow nonmedical persons to share what they know about a particular health condition. However, there are controversies regarding the authenticity of information shared by non-experts.</p>\r\n\r\n<p>Although this transmission of information seems positive, it is not free of its setback. Such an opportunity ushers the flow of misinformation. But, health agencies can always take countermeasures to tackle the situation. Proper plan to share information and stop the flow of wrong information can be the priority of health agencies to be of help to the community dependent on them.</p>\r\n\r\n<p>&ldquo;The new home to GOVERNANCE&rdquo; is real.</p>\r\n\r\n<p>Social media has transformed civic engagement and participation. Citizens can become the initial source of plans, initiatives, and ideas in a more interactive way than before. More and more influential people and leaders are expected to embrace transparent governance as social channels have made it easy for them to interact and cooperate with their constituents.</p>\r\n\r\n<p>In addition, social media is consistently aiding us in responding more promptly to different calamities and disasters. Human rights violations are now being watched across the globe without the interreference of conventional news media. Thus, social media platforms are having remarkable impacts upon the continual changes in our lifestyle.</p>', 'blog-thumbnail-6.jpg', 'is-social-media-changing-our-lifestyle', 0, 0, 0, 6, 1, 'The Way Social Media Platforms Affect How Live & Interact', 'Social media', 'Social media is getting impeccably popular due to their influences upon the way people live, socialize, work, and cooperate with their close associates. Learn more about social media impact upon human lives!', 1, 1, 1, '2018-03-20 04:00:35', '2018-10-31 08:30:04'),
(12, 'Press Releases for Marketing: Pros & Cons', 'Press releases are not a new addition to the marketing avenue. It has its merits and demerits. So, every marketer needs to be aware of them before adopting a particular PR strategy.', '<h2>Press Releases: Should or Shouldn&rsquo;t?</h2>\r\n\r\n<p>As soon as you have decided to actualize a public relation strategy for your business, it is time to give these publications a serious thought. Press releases are a powerful tool to help spread your message across a broad group of audience.</p>\r\n\r\n<p>Press releases for marketing are no unmixed blessings but one of the conventional ways to initiate the launch of a product or service.</p>\r\n\r\n<h3>Advantages of Press Releases:</h3>\r\n\r\n<h4>As a conveyer of your message:</h4>\r\n\r\n<p>You want your news to reach out front to people with press release distribution. For many businesses, it has been possible to earn success by submitting a press release to the famous wire and make sure its submission to numerous publications, and then reposting to other online locations.</p>\r\n\r\n<h4>As a contributor to link building:</h4>\r\n\r\n<p>Press releases for marketing help build links. Even when a small press release does not necessarily help with SEO, the editorial coverage that you get from them will bring great benefits to your SEO. Ensure that you include keywords that you want to rank for your releases. So, when journalists see the release, they will include some of these keywords, particularly if they pull quotable snippets form you to include in their coverage.</p>\r\n\r\n<h4>As an information hub for journalists:</h4>\r\n\r\n<p>Press releases help journalists check information. When you make a press release, all the information you want journalists to know about your business is in one place. Even external documents, like research documents and presentations, are available in a press release, making it easy for journalists to find and accurately reference all the information they need to write their story about you.</p>\r\n\r\n<h4>As something to your message like what a refinery to a winery:</h4>\r\n\r\n<p>Press releases refine your messaging. As you put your press release together, you need to ensure that you have nailed the message for the announcement to ensure maximum exposure. It is the place everyone will go to get the story and cite important data points. Once you have refined the message of your release, you are giving the right message for all other content creators to draw upon.</p>\r\n\r\n<h3>Disadvantages of Press Releases:</h3>\r\n\r\n<h4>No help for your SEO:</h4>\r\n\r\n<p>Press releases for marketing may not be directly helpful to your SEO. They can only help SEO if there is added editorial content published as a result of your press release. However, despite popular belief that press releases help your SEO efforts, they actually will not help as much as you think. Google experts say that verifying your SEO ranking in Google will not increase once a press release is posted.</p>\r\n\r\n<h4>Poor potentiality for outreach:</h4>\r\n\r\n<p>Press releases will not improve your communication with customers. Press releases might get the attention of journalists, but it is very unlikely that it will reach your target audience. Customers like to read information in a way that feels natural and is easy to digest, like blog posts or news stories. The press release template takes longer to read and is usually harder to understand.</p>\r\n\r\n<h4>No measurable success:</h4>\r\n\r\n<p>Press releases are hard to measure. Data is the main method marketers prove success to the rest of their department and business. However, unlike others parts of your marketing strategy, press releases are very hard to measure, so it is hard to prove if they are successful or not.</p>\r\n\r\n<h4>Not cost-effective:</h4>\r\n\r\n<p>Press releases are not cost-effective. Posting a single press release can cost hundreds (even thousands) of dollars. Most of the time, they are not picked up by journalists and are just reposted on other websites. They have become a little outdated as public relation relies more on building relationships with the media instead of sending press releases to journalists you might not even know.</p>\r\n\r\n<p>Despite all these setbacks, press releases for marketing were important, is still and will be useful if businesses know how to create and spread them across the right channels.</p>', 'blog-thumbnail-4.jpg', 'press-releases-for-marketing-pros-cons', 0, 0, 0, 10, 2, 'Should Your Brand Count On Press Releases For Marketing?', 'Press releases for marketing', 'Businesses and organizations have been using press releases for marketing for several decades while enjoying both their benefits and some clear drawbacks. Learn more about press releases for marketing!', 1, 1, 1, '2018-03-20 04:06:59', '2018-10-31 08:47:50'),
(13, 'Want to know about Twitter Ads?', 'Twitter ads are a wonderful way to boost your online marketing using social media strategies. However, there are techniques and expenses involved which are crucial to your success.', '<h2>Fast Facts About Twitter Ads</h2>\r\n\r\n<p>Twitter has currently over 330 million monthly users including 100 million daily active users who send 500 million tweets every 24 hours. Twitter is a social platform used to get the latest news and trends from around the world. Businesses can take advantage of Twitter advertisements to gain more followers for brand awareness, to drive people to their website, and to generate leads!</p>\r\n\r\n<h3>Growth of a Follower Base:</h3>\r\n\r\n<p>Twitter Ads can be run strictly to gain more followers and to build a community base online. Followers have a chance to engage with a business and vice versa. Twitter followers cannot only share a businesses&rsquo; content with their friends, but they can also make purchases online. A small business study was conducted in 2014, which found that Twitter followers could help achieve substantial sales and reach for a business.</p>\r\n\r\n<p>Once an account starts to gain more followers, it is essential that the business engage with them. Some of the popular ways to engage with an audience is to ask open-ended questions that can lead to a conversation. Another way to interact with followers is to post about real time trends so that followers have something to relate to. New Belgium Brewing Company did an excellent job of creating an ad during &ldquo;Shark Week&rdquo; to capture more followers and become a part of the conversation.</p>\r\n\r\n<h3>Traffic Gathering:</h3>\r\n\r\n<p>Twitter allows businesses to reach a specific audience tailored to a target demographic. When it comes to Twitter Ads, target people by location, gender, keywords, followers, interest, behaviors and more! Location can be broken down by country, state, and postal code. This allows even small local businesses to take advantage of advertisements to reach their target audience.</p>\r\n\r\n<p>Another feature advertisers need to take advantage of is to add keywords. Twitter allows advertisers to add keywords to target searches or users that may need your product or service. For example, a local coffee shop could target ads specifically to people that are tweeting about coffee. Twitter allows advertisers to add broad match, phrase match, negative unordered match, and negative phrase match keywords. The keyword match type is very similar to the types of keywords used for a SEM Campaign.</p>\r\n\r\n<p>Another Twitter ads feature that must not be overlooked is the &ldquo;Add Followers&rdquo; feature. This feature allows a business to add followers that may be interested in its products or services. Advertisers may also add competitors&rsquo; twitter handles to try to reach their following.</p>\r\n\r\n<h3>Lead Generation:</h3>\r\n\r\n<p>At the end of the day what do all businesses want to achieve from ads? LEADS! Twitter allows businesses to add a Lead Generation Card to a promoted tweet, which allows users to share their contact information so a business can connect with them later. Getting an email address from a potential consumer can help with the success of an email marketing campaign. In order to get an email address from a consumer, the business must first make engaging content or do an exclusive offer to make people feel special.</p>\r\n\r\n<p>Twitter, like many other social media platforms, lets businesses run advertisements to reach an audience likely to have an interest in their business. It is important that businesses take advantage of Twitter ads as they are an easy way to increase brand awareness while also generating more leads and driving traffic to their website.</p>', 'blog-thumbnail-1.jpg', 'want-to-know-about-twitter-ads', 0, 0, 0, 35, 1, 'What Businesses and Brands Need To Know About Twitter Ads?', 'Twitter Ads', 'Businesses in the modern era have numerous ways like Twitter ads to advertise their services and utilities. Twitter ads contribute to the growth of your customer base. But how? Learn more!', 1, 1, 1, '2018-03-20 04:12:18', '2018-10-31 08:47:11'),
(14, 'What Is Tiered Backlink?', 'Tiered backlinks are still alive with some notable changes in the way they would affect the potential of a website’s gathering traffic. These backlinks if done appropriately work wonder.', '<h2>Tiered Backlink Explained</h2>\r\n\r\n<p>For those struggling to get a higher rank and receive an increasing quantity of traffic to a website, tiered backlink can be a magical thing to get busy with. Neither too simple nor too complicated, the strategy is not beyond anyone&rsquo;s measures.</p>\r\n\r\n<p>In lieu of building websites that link back to you (low authority websites) for the sole purpose of building backlinks, you use guest posts on authoritative websites to link back to another guest post written by you in the same niche.</p>\r\n\r\n<p>You may be asking &ldquo;Where does my website link appear in all this story?&rdquo;</p>\r\n\r\n<p>We will get there.</p>\r\n\r\n<p>In the first tier, you will mention your website. However, the second tier will only strengthen the first one to make the backlink to your website stronger.</p>\r\n\r\n<p>Instead of building two backlinks, you build just one &ndash; a quite powerful one, at that.</p>\r\n\r\n<p>There are many things to be said about tiered link building, so let&rsquo;s get to it!</p>\r\n\r\n<h3>What do we not call tiered backlink building?</h3>\r\n\r\n<p>You are probably thinking to yourself, &ldquo;I don&rsquo;t need to wreck my nerves trying to find authoritative websites and then get rejected because my content is not good enough. You could just use the old trick: buy expired domains and then create content on those websites that will strengthen each other, and then point the first tier to my website.&rdquo;</p>\r\n\r\n<p>You are right. You could do that. But that is a black hat technique that will get you penalized.</p>\r\n\r\n<p>Creating websites that you use as tiers is not white hat tiered link building, and it most likely buries your website on page 10. If you want to rank higher, you will have to be able to produce high-quality content that is accepted by authoritative websites in your niche. That is the secret to tiered link building.</p>\r\n\r\n<p>Tiered link building is all about guest posting on authoritative websites. You choose your first tier and the other websites point at it, while only the first-tier points at you. This is a white hat technique that can put you on the first page of Google when done properly.</p>\r\n\r\n<h3>From a black hat perspective:</h3>\r\n\r\n<p>You&rsquo;re not doing anyone any harm. You aren&rsquo;t wasting electricity for something useless like spamming either.</p>\r\n\r\n<p>Your tier 2 posts are helping the owners of those sites.</p>\r\n\r\n<p>By building contextual links to your high-quality tier 1 guest posts, you&rsquo;ll please the site&rsquo;s in which you posted those posts, as you&rsquo;ll not be the only person benefiting from that as those links will help drive the overall Domain Authority of those domains higher.</p>\r\n\r\n<p>Your content helps three parties in total: you, your tier 1 sites, your tier 2 sites.</p>\r\n\r\n<h3>How to find websites who are interested in your content?</h3>\r\n\r\n<p>An easy way to find your first tier is to look at Google trends in your niche. You could also perform a keyword search and pick between the first websites ranking for that keyword.</p>\r\n\r\n<p>The first tier must be the most powerful. The second should have a domain authority ranked at least 30.</p>\r\n\r\n<p>Keep in mind that in tiered link building the second website strengthens the first, and only the first has a link back to your website.</p>\r\n\r\n<p>There are several ways to approach tiered backlink building. You can search for broken links in those websites and promise to replace them with working links to your content.</p>\r\n\r\n<p>You can create an infographic that goes well with their content and then add a description to it which contains your link on your first tier.</p>\r\n\r\n<p>There are several approaches to guest posting. But no matter what you do, provide value. It makes the website owner you are pitching to happy, it makes Google happy, and it probably makes you smile too.</p>\r\n\r\n<p>AND, this is probably the logical conclusion to a primary overview of tiered backlinks.</p>', 'blog-details-1.jpg', 'what-is-tiered-backlink', 0, 0, 0, 22, 2, 'A Critical Study On Tiered Backlinks &v Their Effectiveness', 'Tiered backlink', 'Tiered backlink is a great way to increase the traffic of a website while it might sound complex, and in some cases, an effort less worthy of trying. Learn more about tiered backlink to benefit.', 1, 1, 1, '2018-03-20 04:15:45', '2018-10-31 08:29:14');

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
(6, 0, 'Affiliates', NULL, NULL, 'affiliates', 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-03-14 22:39:39', '2018-04-04 05:04:36'),
(7, 0, 'Miscellaneous', NULL, NULL, 'miscellaneous', 0, 0, NULL, NULL, NULL, 1, NULL, 1, '2018-03-14 22:39:52', '2018-04-04 05:04:05'),
(8, 0, 'Social Media Marketing', NULL, NULL, 'social-media-marketing', 0, 3, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 03:51:43', '2018-03-20 22:35:13'),
(9, 0, 'Digital Marketing', NULL, NULL, 'digital-marketing', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 03:54:03', '2018-03-20 03:57:02'),
(10, 0, 'Branding', NULL, NULL, 'branding', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 04:02:46', '2018-03-20 04:06:59'),
(11, 0, 'Search Engine Marketing', NULL, NULL, 'search-engine-marketing', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 04:13:14', '2018-03-20 04:15:45');

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
(34, 6, 7, 'App\\Model\\Common\\Cases', '2018-04-05 11:03:12', '2018-04-05 11:03:12'),
(35, 6, 8, 'App\\Model\\Common\\Cases', '2018-04-05 10:58:45', '2018-04-05 10:58:45'),
(36, 6, 9, 'App\\Model\\Common\\Cases', '2018-04-05 10:58:45', '2018-04-05 10:58:45'),
(37, 7, 10, 'App\\Model\\Common\\Cases', '2018-04-05 10:58:45', '2018-04-05 10:58:45'),
(38, 7, 11, 'App\\Model\\Common\\Cases', '2018-04-04 05:03:01', '2018-04-04 05:03:01'),
(40, 6, 10, 'App\\Model\\Common\\Blog', '2018-10-31 08:31:57', '2018-10-31 08:31:57'),
(41, 6, 11, 'App\\Model\\Common\\Blog', '2018-10-31 08:30:04', '2018-10-31 08:30:04'),
(42, 8, 9, 'App\\Model\\Common\\Blog', '2018-10-31 08:32:08', '2018-10-31 08:32:08'),
(43, 9, 10, 'App\\Model\\Common\\Blog', '2018-10-31 08:31:57', '2018-10-31 08:31:57'),
(44, 8, 11, 'App\\Model\\Common\\Blog', '2018-10-31 08:30:04', '2018-10-31 08:30:04'),
(45, 10, 12, 'App\\Model\\Common\\Blog', '2018-10-31 08:29:48', '2018-10-31 08:29:48'),
(46, 8, 13, 'App\\Model\\Common\\Blog', '2018-10-31 08:29:31', '2018-10-31 08:29:31'),
(47, 11, 14, 'App\\Model\\Common\\Blog', '2018-10-31 08:29:14', '2018-10-31 08:29:14'),
(48, 7, 11, 'App\\Model\\Common\\Portfolio', NULL, NULL);

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

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Super Admin', 'superadmin@gmail.com', '01932379923', 'fgddfgfd', 'asda asdasd asdada', '2018-10-18 02:52:20', '2018-10-18 02:52:20');

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
  `likeable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=Not Liked yet, 1=Liked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `liker_id`, `liker_ip`, `likeable_id`, `likeable_type`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, '127.0.0.1', 8, 'App\\Model\\Common\\Blog', 0, '2018-03-14 01:01:12', '2018-03-14 01:50:31'),
(2, NULL, '127.0.0.1', 7, 'App\\Model\\Common\\Blog', 1, '2018-03-14 01:02:41', '2018-03-14 01:06:51'),
(3, NULL, '127.0.0.1', 3, 'App\\Model\\Common\\Blog', 0, '2018-03-14 01:03:38', '2018-03-14 01:04:07'),
(4, NULL, '127.0.0.1', 6, 'App\\Model\\Common\\Blog', 1, '2018-03-14 01:06:05', '2018-03-14 01:06:37'),
(5, NULL, '127.0.0.1', 9, 'App\\Model\\Common\\Blog', 0, '2018-03-18 03:51:14', '2018-03-20 21:52:01'),
(6, NULL, '127.0.0.1', 11, 'App\\Model\\Common\\Blog', 1, '2018-03-18 04:17:51', '2018-03-21 03:23:54'),
(7, NULL, '127.0.0.1', 10, 'App\\Model\\Common\\Blog', 0, '2018-03-19 22:37:27', '2018-03-20 21:51:51'),
(8, NULL, '127.0.0.1', 12, 'App\\Model\\Common\\Blog', 1, '2018-03-20 06:19:57', '2018-03-21 03:23:51'),
(9, NULL, '127.0.0.1', 14, 'App\\Model\\Common\\Blog', 1, '2018-03-20 21:52:36', '2018-03-20 21:52:36'),
(10, 2, '127.0.0.1', 14, 'App\\Model\\Common\\Blog', 1, '2018-03-20 21:53:06', '2018-03-20 21:53:06'),
(11, NULL, '127.0.0.1', 13, 'App\\Model\\Common\\Blog', 1, '2018-03-28 04:54:27', '2018-03-28 04:54:27'),
(12, NULL, '127.0.0.1', 7, 'App\\Model\\Common\\Cases', 1, '2018-03-28 05:03:40', '2018-04-04 01:42:09'),
(13, NULL, '103.205.135.132', 12, 'App\\Model\\Common\\Blog', 1, '2018-04-05 03:47:20', '2018-04-05 03:47:20');

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
(477, 0, 'faq-banner', NULL, NULL, NULL, 'faq-banner_1.png', 1, NULL, '2018-10-31 11:20:21', '2018-10-31 11:20:21');

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
(81, '2018_03_29_034328_add_extra_to_packages_table', 19);

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
(11, 5, 'Website Design & Development', 'website-design-development', NULL, 'digital-advertising.jpg', '<div class=\"row\" style=\"box-sizing: border-box; margin: 0px auto; max-width: 1170px; width: 1170px;\">\r\n<div class=\"col-sm-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 1170px;\">\r\n<h3>Support Charge (Within 48 hour support):</h3>\r\n\r\n<ul>\r\n	<li>Design Change Support: 10,000 taka / $150 per design</li>\r\n	<li>Content Change Support: 4000 taka / $ 50 per month(Max 5 times)</li>\r\n	<li>Content Change Support: 2000 taka / $25 per month(Max 2 times)</li>\r\n	<li>Content Change Support: 8000 taka / $100 per month(Max 12 times)</li>\r\n	<li>Content Change Support: 25000 taka / $330 per month(Unlimited times 10-6 pm)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"row\" style=\"box-sizing: border-box; margin: 0px auto; max-width: 1170px; width: 1170px;\">\r\n<div class=\"col-sm-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 1170px;\">\r\n<h3>Payment Procedure:</h3>\r\n\r\n<ul>\r\n	<li>50 Percent advance payment for website development</li>\r\n	<li>50 Percent due payment within 3 days after complete the full project.</li>\r\n	<li>Client must provide all content with work order.</li>\r\n	<li>Payment will goes to &ldquo;BSD&rdquo; account pay cheque.</li>\r\n</ul>\r\n</div>\r\n</div>', 'a:3:{s:22:\"basic_pricing_subtitle\";s:13:\"STARTING FROM\";s:23:\"silver_pricing_subtitle\";s:13:\"STARTING FROM\";s:21:\"gold_pricing_subtitle\";s:13:\"STARTING FROM\";}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";N;s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";s:23:\"digital-advertising.jpg\";}', NULL, NULL, NULL, 1, NULL, 1, '2018-10-31 09:48:40', '2018-10-31 10:02:26'),
(12, 6, 'Facebook Marketing', 'facebook-marketing', 'Facebook Marketing Sub title', 'digital-advertising.jpg', '<div class=\"section_space bg_gray\" style=\"box-sizing: border-box; color: rgb(68, 68, 68); font-family: \">\r\n<div class=\"row\" style=\"box-sizing: border-box; margin: 0px auto; max-width: 1170px; width: 1170px;\">\r\n<div class=\"col-sm-12 margin-top-40 text-justify\" style=\"box-sizing: border-box; text-align: justify; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 1170px; margin-top: 40px;\">\r\n<p>The rapid growth of internet facilities peoples are more easily can connect the social network. In a statics of facebook, Bangladesh is the second largest user country. Obviously, it&rsquo;s a great news for us. Our Country facebook user takes highest benefits of Facebook. Peoples are more likely use Facebook for taking update news every time. The business trend is now changing. Maximum business today depends on digital marketing &amp; facebook is the best place for advertising your business. You can update your business products/services just with a click and it will show on your target client feed.BSD expertise in digital marketing especially in facebook marketing.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"row\" style=\"box-sizing: border-box; margin: 0px auto; max-width: 1170px; width: 1170px;\">\r\n<div class=\"col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 1170px;\">\r\n<h3>Help you with the following Concepts :</h3>\r\n\r\n<ul>\r\n	<li>Creating Facebook Ad/Through manage/ Through optimization.</li>\r\n	<li>Design a Fan page/ Doing Optimization.</li>\r\n	<li>Set up your Page</li>\r\n	<li>Identify your audience</li>\r\n	<li>Create compelling content</li>\r\n	<li>Advertise</li>\r\n	<li>Increasing targeted fan.</li>\r\n	<li>Making custom tab.</li>\r\n	<li>Posting related content (Picture, status, video).</li>\r\n	<li>Increasing traffic to your website through Facebook.</li>\r\n	<li>Creating Facebook Marketing Strategy</li>\r\n	<li>Doing Brand and User Engagement Plan.</li>\r\n</ul>\r\n</div>\r\n</div>', 'a:4:{s:22:\"basic_pricing_subtitle\";N;s:23:\"silver_pricing_subtitle\";N;s:21:\"gold_pricing_subtitle\";N;s:24:\"premium_pricing_subtitle\";N;}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";N;s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";s:22:\"contact-us-baner_1.png\";}', NULL, NULL, NULL, 1, NULL, 1, '2018-10-31 10:11:55', '2018-10-31 10:13:16'),
(13, 5, 'Shared Hosting', 'shared-hosting', 'Shared Hosting Subtitle', 'digital-advertising.jpg', '<h2>Terms and conditions :</h2>\r\n\r\n<ul>\r\n	<li>BSD registration hosting within 48 hours from bill pay time without bank holidays.</li>\r\n	<li>Hosting owner must pay renew bill before 30 days of expired date.</li>\r\n	<li>Client must pay renew bill to office via bkash or bank will procesing charge.</li>\r\n	<li>If client call for collect renew bill them 1000 taka service charge add with renew bill for every call</li>\r\n	<li>If hosting owner wait to renew after expired date then 3000 taka will add with renew charge (valid 2 week from expired date)</li>\r\n	<li>If customer failed to renew 15 days of expired date then Bangladesh Software Development will not take any responsibility of this hosting.</li>\r\n</ul>', 'a:3:{s:22:\"basic_pricing_subtitle\";s:8:\"PER YEAR\";s:23:\"silver_pricing_subtitle\";s:8:\"PER YEAR\";s:21:\"gold_pricing_subtitle\";s:8:\"PER YEAR\";}', NULL, 0, 0, 0.00, NULL, 'a:4:{s:18:\"pricing_info_title\";N;s:10:\"step_title\";N;s:13:\"step_subtitle\";N;s:10:\"step_image\";N;}', NULL, NULL, NULL, 1, NULL, 1, '2018-10-31 10:30:50', '2018-10-31 10:31:16');

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
(151, 13, 5, 3, 'Corporate Package', 100, 400.00, 0, '[{\"gold\":\"\",\"sub\":[{\"gold\":\"Single Domain\"},{\"gold\":\"1000 Mb Disk Space\"},{\"gold\":\"10000 Mb monthly Data Transfer\"},{\"gold\":\"30 Email Accounts\"},{\"gold\":\"20 mysql DB\"},{\"gold\":\"25 subdomain\"},{\"gold\":\"Latest CPanel\"}]},{\"gold\":\"Platinum Package\",\"sub\":[{\"gold\":\"Single Domain\"},{\"gold\":\"10000 Mb Disk Space\"},{\"gold\":\"100000 Mb monthly Data Transfer\"},{\"gold\":\"Unlimited Email Accounts\"},{\"gold\":\"Unlimited mysql DB\"},{\"gold\":\"Unlimited subdomain\"},{\"gold\":\"Latest CPanel\"}]}]', '2018-10-31 10:30:50', '2018-10-31 10:42:56');

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
(2, 'Terms & Conditions', 'Terms & Conditions', 'Everything As Fair & Easy As You Want', 'terms-a-conditions-banner.png', '<h3>Information Collection and Use</h3>\r\n\r\n<p>As a modern digital marketing agency, Doodle Digital collects personal information when you register or contact us from our website. As a buyer, we collect your name, address, email, and telephone number. If you upload and archive documents, we also collect the name and address you wish payments to be made to.</p>\r\n\r\n<p>Doodle Digital uses information for the following general purposes: to customize the advertising and content you see, fulfill your requests for products and services, improve our services, contact you, conduct research, and provide anonymous reporting for internal and external clients.</p>\r\n\r\n<h3>Information Sharing and Disclosure</h3>\r\n\r\n<p>Doodle Digital does not rent, sell, or share personal information about you with other people or nonaffiliated companies except to provide products or services you&#39;ve requested, when we have your permission, or under the following circumstances:</p>\r\n\r\n<ul>\r\n	<li>We respond to subpoenas, court orders, or legal process, or to establish or exercise our legal rights or defend against legal claims;</li>\r\n	<li>We believe it is necessary to share information in order to investigate, prevent, or take action regarding illegal activities, suspected fraud, situations involving potential threats to the physical safety of any person, violations of Doodle Digital&#39;s terms of use, or as otherwise required by law.</li>\r\n	<li>Business Transfers: As we continue to develop our business, we might sell or buy services, stores, or assets. In such transactions, visitor information is usually one of the transferred business assets. Also, in the unlikely event that Doodle Digital is acquired, or substantially all of its assets are acquired, customer information will of course be one of the transferred assets.</li>\r\n	<li>Credit card information will never be disclosed by Doodle Digital and follow the conditions of use established by Visa, Mastercard, Discover, Amex, and PayPal.</li>\r\n</ul>\r\n\r\n<h3>Terms of Service, Notices, and Revisions</h3>\r\n\r\n<p>If you choose to visit Doodle Digital, your visit and any dispute over privacy is subject to this Notice and our Conditions of Use, including limitations on damages, arbitration of disputes, and application of the law of the state of Pennsylvania. If you have any concern about privacy at Doodle Digital, please send us a thorough description to info@doodledigital.net, and we will try to resolve it. Our business changes constantly. This Notice and the Conditions of Use will change also and use of information that we gather now is subject to the Privacy Policy in effect at the time of use. You should check our website frequently to see recent changes.</p>\r\n\r\n<h3>Newsletters</h3>\r\n\r\n<p>Being digital marketing agency by nature, we send newsletters to you and will not sell your email address to 3rd parties. You may choose to opt-out of the newsletter at any time by following the unsubscribe instructions in each newsletter or by contacting us directly. By default, all contact from our website is entered into our CRM and newsletter distribution list. If you would prefer not to be added to our email distribution list, please specify this in the body of email or contact from submission to us.</p>\r\n\r\n<h3>Copyright</h3>\r\n\r\n<p>The digital images and transcripts of documents on Doodle Digital are the copyright of Doodle Digital through our photo licenses with other providers or are the individual copyright of Doodle Digital.</p>\r\n\r\n<p>The index and all related website content are the copyright of Doodle Digital.</p>\r\n\r\n<h3>Permitted Use</h3>\r\n\r\n<p>Visitors to this website are granted permission to access this material, to download and copy such material on to electronic, magnetic, optical or similar storage media and to make printed copies of any such downloaded material, provided that such activities and copies are for non-commercial private study and research only.</p>\r\n\r\n<h3>Restricted Use</h3>\r\n\r\n<p>Visitors to this website may not copy, distribute, screen shot, reproduce, sell or publish any of the copyright material downloaded or copies from this website. For the avoidance of doubt, no permission is given for the transfer of any of this material to an open internet site. For permission, please contact info@doodledigital.net. Doodle Digital monitors the web closely for violations of our user policy.</p>', 'Our Terms & Conditions | A Fair Digital Marketing Agency', 'digital marketing agency', 'Doodle Digital follows the standard procedures regarding the terms and conditions applicable to users. As a conscious digital marketing agency, we always stay updated with the latest guidelines. Read more!', 'terms-conditions', NULL, 53, 1, 1, 1, '2017-10-24 23:07:17', '2018-10-31 11:16:10'),
(4, 'Privacy Policy', 'Privacy Policy', 'Assurance For Confidentiality Of User Information', 'privacy-policy-banner.png', '<p>Doodle Digital, a proactive digital marketing agency, has its Privacy Policy that governs and describes how Doodle Digital gathers, uses, keeps tracks of and discloses user information (each, a &ldquo;User&rdquo;) of the https://doodledigital.net website (&ldquo;Site&rdquo;). This privacy policy is applicable to the Site as well as all its products and services.</p>\r\n\r\n<h3>Personal identification information</h3>\r\n\r\n<p>We may collect Users&rsquo; personal identification information in different ways that might include but not be limited to, the time users visit the Site, signup with the Site, make an order, subscribe to our newsletter, provide response to any of our surveys, fill out any form, and in relation with other services, features, activities, or resources available on the Site.</p>\r\n\r\n<p>We may ask Users for, as suitable, full name, email and mailing address, cell number, and credit card information. However, Users may visit the site anonymously. We will collect and store Users&rsquo; personal identification information only when they submit the information voluntarily. Users can avoid supplying personally identification information if they want, except that such avoidance may not allow them to participate in certain activities.</p>\r\n\r\n<h3>Non-personal identification information</h3>\r\n\r\n<p>Non-personal identification information may be collected as Users do any interaction with the Site. Such information may include the device name, browser name, operating system, name of ISP, and other technical information.</p>\r\n\r\n<h3>Web Cookies:</h3>\r\n\r\n<p>Cookies may be used to improve User experience. The web browsers used by Users put cookies on their personal computers&rsquo; hard drives for keeping records and at times to keep track of information about them. It is permitted that User can customize their browsers to refuse cookies, or to send them alerts as cookies are sent. If cookies are refused, some features of the Site may function inappropriately.</p>\r\n\r\n<h3>Use of the collected information:</h3>\r\n\r\n<p>Following are the purposes Doodle Digital may use the collected User information.</p>\r\n\r\n<ul>\r\n	<li>To improve User service and be able to respond to their queries or service requests efficiently.</li>\r\n	<li>To be able to personalize user experience by understanding how Users use the resources or service on the Site.</li>\r\n	<li>To improve the Site or its services using customers&rsquo; feedback as the guidance in particular.</li>\r\n	<li>To process online payments as users, place orders and make payments. (Information is not shared with any outside party except the amount of information required compulsorily for the service)</li>\r\n	<li>To make arrangement for a contest, survey, promotion, and similar online events.</li>\r\n	<li>To offer Users resources or information as per their agreement to receive them about different topics that we find useful for them.</li>\r\n	<li>To send users on a periodic basis.</li>\r\n</ul>\r\n\r\n<h3>How to unsubscribe?</h3>\r\n\r\n<p>If the User feels it is right to unsubscribe from getting our future emails regarding different digital marketing agency services and offers, he/she can go through our detailed unsubscribe guidelines located at the bottom of any email they received from us. However, the User may, if required, contact us directly via our Site.</p>\r\n\r\n<h3>Protection of User information:</h3>\r\n\r\n<p>We follow appropriate and legitimate methods to collect, store, and process data. We adopt strong security measures to ensure maximum protection against any instance of alteration, unauthorized access, destruction of personal information, login credentials, transaction information, disclosure, and any sensitive data stored on the Site.</p>\r\n\r\n<h3>Sharing your personal information</h3>\r\n\r\n<p>We do not sell, trade, or rent Users personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates and advertisers for the purposes outlined above. We may use third party service providers to help us operate our business and the Site or administer activities on our behalf, such as sending out newsletters or surveys. We may share your information with these third parties for those limited purposes provided that you have given us your permission.</p>\r\n\r\n<h3>Compliance with children&rsquo;s online privacy protection act</h3>\r\n\r\n<p>Protecting the privacy of the very young is especially important. For that reason, we never collect or maintain information at our Site from those we actually know are under 13, and no part of our website is structured to attract anyone under 13.</p>\r\n\r\n<h3>Changes to this privacy policy</h3>\r\n\r\n<p>Doodle Digital has the discretion to update this privacy policy at any time. When we do, we will revise the updated date at the bottom of this page. We encourage Users to frequently check this page for any changes to stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this privacy policy periodically and become aware of modifications.</p>\r\n\r\n<h3>Your acceptance of these terms</h3>\r\n\r\n<p>By using this Site, you signify your acceptance of this policy. If you do not agree to this policy, please do not use our Site. Your continued use of the Site following the posting of changes to this policy will be deemed your acceptance of those changes.</p>', 'Our Privacy Policy | A Complete Digital Marketing Agency', 'Digital marketing agency', 'Doodle Digital has experienced what users love to share with a website and what not. Also, we know as a well-aware digital marketing agency we need to ensure that the data of our users are safe and private.', 'privacy-policy', NULL, 21, 1, 1, 1, '2018-03-29 03:03:07', '2018-10-31 11:15:02');

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

INSERT INTO `portfolios` (`id`, `title`, `slug`, `description`, `image`, `image_gallery`, `views`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(7, 'There are many variations of passages of Lorem Ipsum available', 'there-are-many-variations-of-passages-of-lorem-ipsum-available', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text repeat predefined chunks as necessary.</p>', 'large-thumb-7.jpg', '[\"\"]', 0, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-21 04:04:44', '2018-10-21 04:04:44'),
(8, 'Some patience for the modern marketer', 'some-patience-for-the-modern-marketer', '<p><span style=\"color:rgb(85, 85, 85); font-family:roboto,sans-serif; font-size:16px\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. don&#39;t look even slightly believable.</span></p>', 'large-thumb-9.jpg', '[\"\"]', 0, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-21 04:08:42', '2018-10-21 04:08:42'),
(9, 'A conversation about our next challange', 'a-conversation-about-our-next-challange', '<p><span style=\"color:rgb(85, 85, 85); font-family:roboto,sans-serif; font-size:16px\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. don&#39;t look even slightly believable.</span></p>', 'large-thumb-8.jpg', '[\"\"]', 0, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-21 04:09:36', '2018-10-21 04:09:36'),
(10, 'Some patience for the modern marketer', 'some-patience-for-the-modern-marketer-1', '<p><span style=\"color:rgb(85, 85, 85); font-family:roboto,sans-serif; font-size:16px\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. don&#39;t look even slightly believable.</span></p>', 'large-thumb-10.jpg', '[\"\"]', 1, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-21 04:10:49', '2018-10-21 04:19:52'),
(11, 'Some patience for the modern marketer', 'some-patience-for-the-modern-marketer-12-1-1', '<p><span style=\"color:rgb(85, 85, 85); font-family:roboto,sans-serif; font-size:16px\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. don&#39;t look even slightly believable.</span></p>', 'large-thumb-2.jpg', '[\"[\\\"[\\\\\\\"\\\\\\\"]\\\"]\"]', 5, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-21 04:12:27', '2018-10-31 07:05:00');

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
  `title` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `features` longtext COLLATE utf8mb4_unicode_ci,
  `extra` longtext COLLATE utf8mb4_unicode_ci,
  `background` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `layout` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `subtitle`, `slug`, `image`, `description`, `short_description`, `features`, `extra`, `background`, `views`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`, `layout`) VALUES
(1, 'Search Engine Marketing', 'Your Journey To The Top Doesn’t Have To Be Impossible', 'search-engine-marketing', 'search-engine-marketing.png', '<h2 style=\"text-align:center\">Search Engine Marketing Services At Doodle Digital</h2>\r\n\r\n<p>Well, you have landed on this page and started looking for the term SEO. Right? But, we are talking about our search engine marketing strategies.</p>\r\n\r\n<p>Disappointed? No, don&rsquo;t be&hellip;We are presenting you a set of services, broader and more inclusive than what you already know about using search engine marketing strategies to get on top of the search engine results page.</p>\r\n\r\n<p>But, SEO is still in our vein. We just make a difference by bidding on keywords that your target audience is likely to enter into different search engines and creating clear and quick advertisements.</p>\r\n\r\n<p>It is time to learn the subtle difference between search engine marketing and optimization as we hate creating confusion and take advantage of customers&rsquo; decisions taken unknowingly and unthoughtfully.</p>\r\n\r\n<blockquote>In SEM, you purchase ads and get website traffic.<br />\r\nIn SEO, you get traffic from organic, editorial, and free search results.</blockquote>\r\n\r\n<p>Either way, you can hope to get qualitative traffic. So, is it all about paying real money or no penny?</p>\r\n\r\n<h3>Our Reply:</h3>\r\n\r\n<ul>\r\n	<li>We make websites easy to FIND.</li>\r\n	<li>We survive PANDA, PENGUIN, and HUMMINGBIRD hits.</li>\r\n	<li>We improve the EXPERIENCE of prospective audiences.</li>\r\n	<li>We make websites 100% RESPONSIVE and READY for MOBILE.</li>\r\n	<li>We take care of the &lsquo;SOCIAL&rsquo; thing.</li>\r\n</ul>\r\n\r\n<p>Now, the question is how we implement these search engine marketing strategies. Are we right? Good&hellip;&hellip;you&rsquo;re nodding!</p>\r\n\r\n<h3>Making your site findable:</h3>\r\n\r\n<p>Search engines are not humans, and they do not know you. Unless you do and include the things search engines use to find websites, all your efforts will become useless. What are the essentials?</p>\r\n\r\n<ul>\r\n	<li>&ldquo;A logical site STRUCTURE is a must.&rdquo;</li>\r\n	<li>&ldquo;Use of RSS/Atom Feeds and XML sitemap saves you the day GOOGLE CRAWLS.&rdquo;</li>\r\n	<li>&ldquo;Use of Schema Markup helps Google better interpret your site CONTENT.&rdquo;</li>\r\n	<li>&ldquo;Featured snippets are getting popular as they will likely provide for Google Assistant, Amazon Echo, or Siri.&rdquo;</li>\r\n</ul>\r\n\r\n<p>Why you think have we mentioned the significance of the above techniques? We do all these to make your site easy for users and search engines to find.</p>\r\n\r\n<h3>Our measures to survive PANDA, PENGUIN &amp; HUMMINGBIRD:</h3>\r\n\r\n<p>Do you think your site has been sifted out by Google&rsquo;s critical updates?</p>\r\n\r\n<p>Where there are hits, there are survivals, and we have proven techniques for them.</p>\r\n\r\n<ul>\r\n	<li>For Panda, we offer content that is informational, engaging, genuinely useful, and full of expert insights for users. We appropriately handle the CANONICALIZATION.</li>\r\n	<li>For Penguin, we get EDITORIAL backlinks through shares, referrals, and quotations from others while removing spams or low-quality backlinks.</li>\r\n	<li>For Hummingbird, we revamp your entire site inspecting every single element, big and small, and ensure completeness, especially for the keyword(s) and content so that they become exactly as people think about getting from a quick search.</li>\r\n</ul>\r\n\r\n<p>Regardless of how much effort we may need to put into your campaign, we are proud to offer affordable SEO for small business and any ethical business.</p>\r\n\r\n<h3>How do we handle UX Metrics?</h3>\r\n\r\n<p>To be honest, we have to be mindful of a few factors including the site speed and mobile responsiveness being on top of all.</p>\r\n\r\n<p>We have included a few other actions in our search engine marketing strategies. Here is how we proceed.</p>\r\n\r\n<ul>\r\n	<li>We add a lot of custom functions but very professionally and aesthetically to make sure users find the site quite easy, and their experience is awesome.</li>\r\n	<li>We take and successfully overcome the challenge of increasing the SITE SPEED.</li>\r\n	<li>We adopt timely techniques to improve click-through rates and user engagement.</li>\r\n	<li>We suggest HTTP/2 as the new NETWORK PROTOCOL that may get you some ranking boost.</li>\r\n</ul>\r\n\r\n<h3>&ldquo;We know mobile rules the users&rsquo; world.&rdquo;</h3>\r\n\r\n<p>People love their smartphones and other mobile devices when it comes to any kind of experience on the internet.</p>\r\n\r\n<ul>\r\n	<li>We achieve 100% RESPONSIVENESS so that nobody has to zoom apply extra effort to read the content.</li>\r\n	<li>We assure that the mobile site loads as fast as Google deems as a standard.</li>\r\n	<li>We keep both metadata and structured data available for both mobile desktop versions of your site.</li>\r\n</ul>\r\n\r\n<p>Good news!!! We use the fairly new ACCELERATED MOBILE PAGES (AMP) technology. This approach makes our efforts to improve UX more authentic and trustworthy to Google. By doing this, we ensure the following outcomes.</p>\r\n\r\n<ul>\r\n	<li>400% FASTER page load (Less than ONE second)</li>\r\n	<li>Higher CLICK-THROUGH rates</li>\r\n	<li>Higher rates for AD VIEWABILITY plus</li>\r\n	<li>Google&rsquo;s hidden APPRECIATION.</li>\r\n</ul>\r\n\r\n<h3>Now, a very big part! PAID SEARCH, we call.</h3>\r\n\r\n<p>This is the flow of works we undertake while setting you a very affordable yet effective Paid Search program.</p>\r\n\r\n<ul>\r\n	<li>We assess the challenge(s), from the most critical to the minor.</li>\r\n	<li>We thoroughly observe and discuss the competitive landscape.</li>\r\n	<li>We set goal(s) and create budget planning.</li>\r\n	<li>We develop a detailed policy that incorporates how we run the paid search program and which principle we will follow to achieve the goal(s).</li>\r\n	<li>Finally, we make an action plan that entails each initiative, optimization technique, and the way to coordinate our work procedure.</li>\r\n</ul>\r\n\r\n<p>Thinking if we are equally careful and sincere when we have to deliver low cost SEO services for small business?</p>\r\n\r\n<p>The answer is YES!!!</p>', '<p>Search engine marketing has evolved a way faster than other online services. To cope with the fast-changing scenario in digital marketing, Doodle Digital has adopted tried and true techniques and up-to-date insights to be able to assist businesses of all levels, from small concerns to large corporations with their digital marketing goals.</p>\r\n\r\n<p>Being committed to making online marketing services easy, affordable, and useful for businesses, we cooperate with professionals at different levels and interact with people, so we know how people think, buy, and live. This is how, we create each of our search engine marketing strategies.</p>', '[{\"feature_title\":\"Strategy Development\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"01_1.png\"},{\"feature_title\":\"Keyword Planning\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"02_1.png\"},{\"feature_title\":\"Budget Planning\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"03_1.png\"},{\"feature_title\":\"Ad Copy Creation\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"04_1.png\"},{\"feature_title\":\"Paid Search\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"05_1.png\"},{\"feature_title\":\"Monitoring & Analytics\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"06_1.png\"},{\"feature_title\":\"Campaign Optimization\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"07.png\"},{\"feature_title\":\"Detailed Campaign Reporting\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"08.png\"}]', '{\"section_title\":\"SPECIALIZATION OF BEST DIGITAL MARKETING AGENCY & BIG BUSINESS\",\"section_description\":\"Qolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibhamw liber tempor cum soluta nobis eleifend option congue nihil uarta decima e quinta. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcoreper suscipit lobortis.\",\"section_image\":\"thumb-service2.png\",\"accordion\":[{\"accordion_title\":\"Content seeding & distribution\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia,looked up one ojf the more ogsb scure Latinfet words, consectetur, from aorem .\"},{\"accordion_title\":\"Digital Advertising\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ojf the more ogsb secure Latinfet words, consectetur, from aorem .\"}]}', '#6739b6', 0, 'Search engine marketing strategies', 'search engine marketing strategies', 'All search engine marketing strategies are driven toward the journey to the first page of search engines. At Doodle Digital, we make a difference in the way search engine marketing services are delivered.', 1, 1, 1, '2017-10-08 04:30:52', '2018-04-04 12:13:22', 2),
(2, 'Branding', 'Opportunities To Share Your Thinking, Character & Value', 'branding', 'branding_1.png', '<h2 style=\"text-align:center\">Branding Services At Doodle Digital</h2>\r\n\r\n<p>Like many, you might say, &ldquo;I&rsquo;ve a business with a logo and product(s) or service(s). Even, I&rsquo;ve a team of marketing individuals with consummate promotional skills. What have I missed then?&rdquo; You have missed something called the brand development strategy which is more than the logo and equal to the product(s)/service(s). Oh, you have forgotten about your brand. So, how do you dub your brand?</p>\r\n\r\n<ul>\r\n	<li>The source of promises made by you to your customers/clients</li>\r\n	<li>One of the foundational elements in your business&rsquo;s marketing communication</li>\r\n</ul>\r\n\r\n<p>Once you agree to accept these facts about branding; Doodle Digital will step forward with a unique and time-tested brand identity planning that is specifically tailored to ensure the BRAND IMAGERY DEVELOPMENT for your business.</p>\r\n\r\n<h3>How do we begin?</h3>\r\n\r\n<p>You might have hired a personal branding strategist. Does that professional know what specific purpose your business serves and why you even need a complete brand development strategy? We start with the functional purpose of your business. We believe your business possesses an intentional objective which needs to be consistent with not only the industry&rsquo;s trends but also the resources you have at your disposal.</p>\r\n\r\n<h3>Here comes the first PRACTICAL step.</h3>\r\n\r\n<p>Doodle Digital identifies the EMOTION that connects customers with a brand. Every brand identity planning session that we hold for a valued client includes the much needed emotional impact relevant to the individual business. Buying decisions often are the results of emotions.</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:26px\">Purpose &rarr; Consistency &rarr; Emotional Impact</span></p>\r\n\r\n<p>With sharp eyes on this flow of actions, we create your BRAND NAMING as well as BRAND STORY.</p>\r\n\r\n<h3>How do we leverage today&rsquo;s economy?</h3>\r\n\r\n<p>No businesses can survive ignoring the economy. On the flip side, your business needs to have the strength and strategy to leverage the current economy.</p>\r\n\r\n<p>Do you still love to listen to what your competitors say about themselves? Maybe, times have changed, and we no longer care what people or businesses say about themselves. All that matters is what people talk about businesses. Be prepared! It&rsquo;s the testimonial economy we are abiding in.</p>\r\n\r\n<p>We make sure your business boasts a league of ambassadors who are proactive to spread their love and respect of your business online. This is how they can ensure a solid VISUAL IDENTITY of your business, and it ultimately leads to a strong BRAND POSITIONING that enables your brand to become visible to the right audience. Of course, we put some of our proven techniques into action to make this happen sooner than later.</p>\r\n\r\n<h3>&ldquo;We let you know who your clients really are.&rdquo;</h3>\r\n\r\n<p>It is a must for you to know who your customers or clients are in real life. It is included in our work plan for your corporate identity planning that we present you with a vivid picture of your customer base. The picture includes the key elements of your customers&rsquo; demographics which can be critical to any brand positioning strategy.</p>\r\n\r\n<h3>How do we generate value for your customers?</h3>\r\n\r\n<p>We craft our IDENTITY PLANNING in a way that people find their language embedded in it. We believe your business can reach more people faster and more convincingly if we can make the following two things happen.</p>\r\n\r\n<blockquote>We create a corporate branding strategy that instills a voice in your brand.<br />\r\nAND the brand speaks the way people speak to their close associates.</blockquote>\r\n\r\n<p>Unlike an average branding agency or sleazy corporate branding firms, we focus on providing helpful content, real-life experience, discussions, and knowledge relevant to your business using the online social platforms. Have you ever used LinkedIn&rsquo;s Long-Form Posts? We already have and demonstrated how it is possible to promote or build the VERBAL IDENTITY of your brand without really appearing to keep marketing your product/service at all.</p>\r\n\r\n<p>Shouldn&rsquo;t your brand development strategy run this way?</p>\r\n\r\n<h3>We work for B2B Businesses:</h3>\r\n\r\n<p>Constructing a purpose-driven B2B business development strategy is the first thing we do to make it a great platform for your B2B concern to build upon. The strategy we can build for you can create a boon for your business evolution. We instill vibrant energy in the branding plan that can keep drawing in people in a way that they may become interested in helping your business grow.</p>\r\n\r\n<h3>Things we can do for B2C Businesses:</h3>\r\n\r\n<p>We understand how B2B and B2C concerns differ from each other.</p>\r\n\r\n<p>So, our B2C marketing strategy entails the identification of a target market, significantly larger than any B2B market. We create a well-thought B2C brand strategy that allows for a great number of small sales so that we can adjust it to accommodate a cycle of short sales and a viable technique to move your customers through the buying spectrum. Short will be the sales consisting of a single phase with a focus on catering to customers&rsquo; impulsiveness.</p>\r\n\r\n<p>We work this way because &ndash;</p>\r\n\r\n<ul>\r\n	<li>One of the prerequisites of a successful B2C branding strategy is the proper publicity of your products or services along with their benefits.</li>\r\n	<li>We know how to tap into the motivational emotions of your individual buyers.</li>\r\n	<li>We know that the purchases are done on impulses or without any prior plan.</li>\r\n</ul>\r\n\r\n<p>Doodle Digital believes in the fact that people always remember how you can make them feel instead of what you did for them. We help you make your customers feel the authenticity and solidity of your brand by creating a purposeful, businesslike, and integrated brand development strategy.</p>\r\n\r\n<p>Still having a second thought? Just let us know.</p>', '<p>A brand development strategy, as Doodle Digital emphasizes, should be the embodiment of the circulation of your brand message that people care about.</p>', '[{\"feature_title\":\"Brand Naming\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"01_2.png\"},{\"feature_title\":\"Identity Planning\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"02_2.png\"},{\"feature_title\":\"Brand Positioning\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"03_2.png\"},{\"feature_title\":\"Brand Story\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"04_2.png\"},{\"feature_title\":\"Verbal Identity\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"05_2.png\"},{\"feature_title\":\"Visual Identity\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"06_2.png\"},{\"feature_title\":\"Brand Imagery Development\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"07_1.png\"}]', '{\"section_title\":\"SPECIALIZATION OF BEST DIGITAL MARKETING AGENCY & BIG BUSINESS\",\"section_description\":\"Qolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibhamw liber tempor cum soluta nobis eleifend option congue nihil uarta decima e quinta. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcoreper suscipit lobortis.\",\"section_image\":\"thumb-service2.png\",\"accordion\":[{\"accordion_title\":\"Content seeding & distribution\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia,looked up one ojf the more ogsb scure Latinfet words, consectetur, from aorem .\"},{\"accordion_title\":\"Digital Advertising\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ojf the more ogsb secure Latinfet words, consectetur, from aorem .\"}]}', '#b011fa', 0, 'Get An Integrated Brand Development Strategy at Doodle Digital', 'brand development strategy', 'Looking for a purpose-drive brand development strategy? Doodle Digital is proud to offer you a dynamic and accommodating brand positioning strategy. Learn more!', 1, 1, 1, '2017-10-07 22:30:52', '2018-04-04 12:13:05', 2),
(3, 'Content Marketing Services', 'Unleash The Door Of Opportunities', 'content-marketing-services', 'content-seeding-a--distribution.png', '<h2 style=\"text-align:center\">Content Marketing Services At Doodle Digital</h2>\r\n\r\n<p>It is easy to have tons of content ready provided that you have an adequate number of writers and a digital marketing content strategy in place. But, gaining any positive traction is quite different a story that requires more than hiring an average content marketing agency that uses some crummy content marketing strategy to help your content, an important asset, reach its desired potential.</p>\r\n\r\n<p>Things of content marketing have met changes, more diverse than ever. We have recognized that content marketing is more than just employing a team of avid writers and having them working on tons of articles. To cope with the current digital trend, we have managed to gather people who are versed in the following areas to ensure the ultimate success in every digital marketing content strategy we make.</p>\r\n\r\n<ul>\r\n	<li>Optimization of content across different formats and guidelines</li>\r\n	<li>Development, execution and management of a content marketing campaign</li>\r\n	<li>Production and editing of video content</li>\r\n	<li>Graphic design, animation, and illustration</li>\r\n	<li>Audio production and editing</li>\r\n	<li>Analytics, search metrics, and reporting</li>\r\n</ul>\r\n\r\n<p><em>We always try to add value to the write-up.</em></p>\r\n\r\n<p><em>We&rsquo;ve devised proven techniques to engage readers while educating them.</em></p>\r\n\r\n<p><em>We leverage the powerful features of social networks.</em></p>\r\n\r\n<p>In today&rsquo;s context, the number of content marketing companies that know exactly where to spread your content is not large. But, under any circumstances, you want that your video content, infographics, or other web content will be noticed, read, and spread.</p>\r\n\r\n<p>Most online businesses acknowledge that it is next to impossible for a brand to thrive if it ignores the value of socializing with the audience through social media. Let us make the whole thing clear.</p>\r\n\r\n<p>We spread the true yet interesting words about your business across the audience on social media. After studying the different variables and demographic information about your target audience, we adopt techniques to maintain a consistently active standing on social platforms, so your audience knows what, when, and how you are going to present them something.</p>\r\n\r\n<p>This is where we feel free to speak. We are a content marketing firm that takes a unitary digital marketing content strategy to scatter your existing content across a whole bunch of powerful content marketing distribution channels.</p>\r\n\r\n<p>These are the particular items our content marketing strategy incorporates.</p>\r\n\r\n<h3>Audiovisual Content:</h3>\r\n\r\n<p>We can increase conversions by 80% using high-quality video content including live and pre-recorded feeds and great podcasts.</p>\r\n\r\n<h3>Case Studies:</h3>\r\n\r\n<p>We can improve your existing situation of lead generation by showing customer success stories and knowledge sharing.</p>\r\n\r\n<h3>Social Media Engagement:</h3>\r\n\r\n<p>We use insightful social media content and content-driven messages or sales materials to achieve great social media engagement.</p>\r\n\r\n<h3>White Paper:</h3>\r\n\r\n<p>We create well-researched and informative white papers that stand out to accelerate lead generation for your business.</p>\r\n\r\n<h3>Web Content:</h3>\r\n\r\n<p>We create resourceful web content, such as articles and landing pages to help and engage readers. We can create a resourceful blog for you to fuel SEO and reach your audience.</p>\r\n\r\n<h3>Infographics:</h3>\r\n\r\n<p>We are adept at creating infographics and other vibrant visual media with viral and brand awareness capabilities.</p>\r\n\r\n<h3>Guides:</h3>\r\n\r\n<p>We create educational e-books, information guides, and user manuals to engage readers and simultaneously build an email marketing list.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>How Do We Understand Content Seeding?</h3>\r\n\r\n<p>First, we help you determine which type of seeding your brand requires. We may we do the job for you having an understanding of your brand&rsquo;s requirements.</p>\r\n\r\n<h3>Content Seeding: Simple Vs. Advanced</h3>\r\n\r\n<p>Although we excel in both types of seeding techniques, we always suggest clients what is best for their existing digital marketing content strategy. Here we reveal the fine line between simple and advanced seeding.</p>\r\n\r\n<h3>Simple Content Seeding:</h3>\r\n\r\n<p>For clients whose budget is too tight to allow for a long-term perspective, we spread the content on their own networks and ask some prominent influencers to spread the content along. But, in these cases, we employ much of our efforts to make sure that the content is unique and valuable. We make sure the content attracts readers in a positive way and influences them to share with others in their networks.</p>\r\n\r\n<h3>Advanced Content Seeding:</h3>\r\n\r\n<p>Have a large amount of content that you want to scatter? Don&rsquo;t worry if you are comfortable with a certain amount of budget and time, typically higher than what is required in simple seeding. Once you accept this; we can scheme a digital marketing content strategy that incorporates an efficient content seeding plan to ensure any number of impressions for your content.</p>', '<p>Doodle Digital creates a proven digital marketing content strategy for a business that incorporates the up-to-date qualitative guidelines and optimization techniques.</p>', '[{\"feature_title\":\"VIDEO CONTENT\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"1_2.png\"},{\"feature_title\":\"CASE STUDIES\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"2_1.png\"},{\"feature_title\":\"SOCIAL MEDIA ENGAGMENT\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"3_1.png\"},{\"feature_title\":\"WHITE PAPERS\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"4_1.png\"},{\"feature_title\":\"WEB CONTENT\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"5_1.png\"},{\"feature_title\":\"INFOGRAPHICS\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"6_1.png\"},{\"feature_title\":\"GUIDES\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"7_1.png\"},{\"feature_title\":\"BLOGS\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"8_1.png\"}]', '{\"section_title\":\"SPECIALIZATION OF BEST DIGITAL MARKETING AGENCY & BIG BUSINESS\",\"section_description\":\"Qolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibhamw liber tempor cum soluta nobis eleifend option congue nihil uarta decima e quinta. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcoreper suscipit lobortis.\",\"section_image\":\"thumb-service2.png\",\"accordion\":[{\"accordion_title\":\"Content seeding & distribution\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia,looked up one ojf the more ogsb scure Latinfet words, consectetur, from aorem .\"},{\"accordion_title\":\"Digital Advertising\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ojf the more ogsb secure Latinfet words, consectetur, from aorem .\"}]}', '#4cc2c0', 0, 'Digital Marketing Content Strategy For Every Business', 'Digital marketing content strategy', 'Do you have a digital marketing content strategy for your brand? Are you afraid of not getting it right? Look at our packages and be happy with a proven digital marketing content strategy.', 1, 1, 1, '2017-10-07 22:30:52', '2018-04-04 12:12:49', 2),
(5, 'Digital Advertising', 'Online Advertising Has Never Been This Easy & Affordable', 'digital-advertising', 'digital-advertising.png', '<h2 style=\"text-align:center\">Digital Advertising Agency Services At Doodle Digital</h2>\r\n\r\n<p>The world of digital marketing has never been the same as it was even a few months ago. The marketing landscape was never this challenging and volatile until the discovery of newer technologies and thinktanks of digitalization.</p>\r\n\r\n<p>The question is if you really want to go for online advertising to succeed. We know that your only answer is YES. Maybe, you would like us to speak now.</p>\r\n\r\n<h3>We turn your website into a virtual magic land that hooks people.</h3>\r\n\r\n<p>While some of the best advertising campaigns on the market ignore the importance of good websites for the success of online advertising, we do quite the opposite. We spend some of our time and much of our effort to design a good website that loads fast and offers a visually pleasing look alongside easy navigation and other conveniences. The goal here is to create a website that hooks the attention of your visitors and binds them for some time; at least as long as it takes them to go through your site at a glance.</p>\r\n\r\n<h3>We investigate the market.</h3>\r\n\r\n<p>Since we aim at creating an impact through advertisements, we investigate the market to identify and segment the target audience. By doing so, we come to know who we are targeting and can design the advertisement(s) accordingly.</p>\r\n\r\n<h3>Here is our PPC management procedure&hellip;&hellip;</h3>\r\n\r\n<p>Here comes the most important part of the activities conducted by a digital advertising agency. Since we have in-depth knowledge about AdWords management, we conduct our PPC management through AdWords for outstanding results as Google is the first to receive a huge amount of traffic and deliver the most number of impressions and clicks.</p>\r\n\r\n<ul>\r\n	<li>We make sure that our advertising activities are regular and consistent. Further, we analyze the performance of the account. For the desired outcome, we make the following adjustments.</li>\r\n	<li>We try to expand the overall reach of a PPC campaign by adding keywords relevant to the business.</li>\r\n	<li>We reduce expenses by adding negative or non-converting keywords in an intelligent manner.</li>\r\n	<li>Sometimes, we split ad groups into more relevant yet smaller groups with the goal to bring in more targeted landing pages and ad text. This way, we work to improve the quality score and click-through rate.</li>\r\n	<li>In our PPC management plan, we include a review plan to find out the components that are leading to more expenses or not performing expectedly. Once we have identified the loose ends; we take immediate actions.</li>\r\n</ul>\r\n\r\n<h3>We understand the types of advertisements.</h3>\r\n\r\n<p>We find where your target audience stays active most of the time of a day. In most cases, audiences are on Facebook. The majority of online audiences love to watch videos. Even, some prefer tweeting and retweeting. While advertising on social media, we keep in mind these tendencies and platforms people prefer.</p>\r\n\r\n<h3>We accurately determine your digital advertising benefits and goals.</h3>\r\n\r\n<p>As a professional digital advertising agency, we try to determine what you exactly want to achieve or do with your digital media advertising campaign. Throughout the years, we have seen businesses adopting advertising campaigns to accomplish diverse goals, such as more traffic generation, lead generation, increase in sales, brand image development, etc. Some try to achieve one or two of these while some aim at getting the mix of everything.</p>\r\n\r\n<p>Proudly speaking, we have conducted many successful advertising campaigns and brought our customers outstanding results within a given timeframe.</p>\r\n\r\n<h3>Here is how we design your advertisement.</h3>\r\n\r\n<p>We know we are not going to get ample space to create a beautiful message and design an unquestionably impressive digital advertisement for you. But, the shortage of space cannot restrict our ability to design a powerful advertisement that contains your brand image, message, and whatever more you want used to attract the traffic.</p>\r\n\r\n<p>We know it is not very easy to make people interested in clicking the ads. So, we take this task with great, great seriousness; especially when we try to use visual elements that speak louder than the words themselves. Maybe, you need to know things more clearly and specifically. Well, here you go.</p>\r\n\r\n<p>Because we are trying to make a sense of urgency, we do not believe in more if only three words can convey the message. We think why a visitor should click on the advertisement. This is how things go easy for us. We take care of the linguistic factors too.</p>\r\n\r\n<p>We are a little more cautious about using a call to action (CTA). Sadly, we have seen many businesses paying top dollars for digital media advertising without any good prospect of success, and the key reason includes poorly/wrongly crafted CTAs or no CTAs at all. But, we modify each piece of content or CTA with the individual search queries included precisely.</p>\r\n\r\n<p>If we use images as the visual elements for your ads, we never use low-quality images that fail to vividly show what you want your audience to see.</p>\r\n\r\n<ul>\r\n	<li>We measure anything and everything.</li>\r\n	<li>Our digital advertising team measures how the advertisements are performing in real time.</li>\r\n	<li>They analyze an entire campaign in detail.</li>\r\n	<li>The find ways to maximize the benefits using the available resources and overcoming the existing challenges.</li>\r\n	<li>They devise techniques to adapt to the changes quickly.</li>\r\n</ul>\r\n\r\n<p>As part of a digital advertising agency, each of us has the right passion and required motivation to bring your digital advertising campaign to an end that you would even not expect.</p>\r\n\r\n<p>Contact us to learn more!!!</p>', '<p>Digital advertising has changed a lot during the past decade. Doodle Digital has become ready to offer top-notch digital advertising services.</p>', '[{\"feature_title\":\"Adwords\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"01_4.png\"},{\"feature_title\":\"PPC Management\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"02_4.png\"},{\"feature_title\":\"Display Advertising\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"03_4.png\"},{\"feature_title\":\"Video Advertising\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"04_4.png\"},{\"feature_title\":\"Facebook Advertising\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"05_3.png\"},{\"feature_title\":\"Advertising Analytics\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"06_3.png\"}]', '{\"section_title\":\"SPECIALIZATION OF BEST DIGITAL MARKETING AGENCY & BIG BUSINESS\",\"section_description\":\"Qolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibhamw liber tempor cum soluta nobis eleifend option congue nihil uarta decima e quinta. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcoreper suscipit lobortis.\",\"section_image\":\"thumb-service2.png\",\"accordion\":[{\"accordion_title\":\"Content seeding & distribution\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia,looked up one ojf the more ogsb scure Latinfet words, consectetur, from aorem .\"},{\"accordion_title\":\"Digital Advertising\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ojf the more ogsb secure Latinfet words, consectetur, from aorem .\"}]}', '#fcb03b', 0, 'Online Advertising At Doodle Digital | Your Digital Advertising Agency', 'digital advertising agency', 'For businesses looking for a trusted digital advertising agency, Doodle Digital has come up with reliable digital media advertising services at reasonable prices. Learn more!', 1, 1, 1, '2017-10-07 22:30:52', '2018-04-04 12:12:23', 2),
(6, 'Creative Services', 'Commitment To Deliver The Powerful Visuals', 'creative-services', 'creative-services.png', '<p>We believe Steve Jobs, Apple&rsquo;s co-founder, was right about design. According to the mastermind, the purpose of design is to take care of the look, feel and function. Since, we offer creative service for business, we create a symmetry among the function, look, and feel. The same is true for our efforts to bring you a web design layout.</p>\r\n\r\n<h3>The way we use colors, typefaces, images, and other effects:</h3>\r\n\r\n<p>Having a complete conceptuality in mind, we make use of complementary colors because they are critical to the balance and harmony among the different parts of the design layout. The background and text have to be easy on readers&rsquo; eyes. So, we use contrasting colors. To make sure that the design incorporates a sufficient amount of emotion and attractions, we use vibrant colors.</p>\r\n\r\n<p>In addition, we are wary of the uses of white space. The ultimate goal is to bring about an uncluttered design that diffuses a contemporary look.</p>\r\n\r\n<p>We employ a decisive plan for using typefaces in the design because the text needs to be easy to read. So, we streamline the design with your brand&rsquo;s goal.</p>\r\n\r\n<p>A significant amount of our design efforts goes invested in images which, we believe, one of the few most powerful elements to attract people&rsquo;s attention on the Internet.</p>\r\n\r\n<p>We consider a lot of navigation elements, such as page hierarchy, uses and positions of bread crumbs, buttons, and other sections.</p>\r\n\r\n<h3>Our animation services make a statement.</h3>\r\n\r\n<p>Our animation artists can breathe life onto a dull canvas. Must we say more? Yes.</p>\r\n\r\n<p>They can make you believe that what they render is actually lively, and not just some cartoons. It is the artistic knack of our animator that enables him to bring reality into the animated characters or objects.</p>\r\n\r\n<p>We abide by the fundamentals of animation.</p>\r\n\r\n<p>As the animation guru Disney suggests, we remember each principle while working. So far, we have learned 12 golden rules, and you will see them in every action we take while creating an animation for your business.</p>\r\n\r\n<h3>About our talent in motion graphics:</h3>\r\n\r\n<p>Moving a graphic is more than a mastery over tools like After Effects, Edge Animate, etc. We strongly believe that mastery of craft has only a little to do with that of tools. The art of motion graphics has its own grammar just like any area of professionalism or education. Graphics artists at Doodle Digital are have a sound understanding of those rules.</p>\r\n\r\n<h3>About our infographics service:</h3>\r\n\r\n<p>While creating an infographic for you, we try to focus on a problem-solving one, especially the topic that answers to the burning questions in your area of business. Our activities for creating infographics include an approach to find the gap in the existing knowledge and information bases and offer relevant content to address the issue. In most cases, we create a very catchy timeline if the infographic is about a person or an event.</p>\r\n\r\n<p>This is how we can offer top-notch creative service for business. Any question?</p>\r\n\r\n<p>Please write to us.</p>', '<p>Doodle Digital specializes in creating a clean, responsive, and stylish web design layout with high-quality visuals like animations, motion graphics, infographics, and animations.</p>', '[{\"feature_title\":\"Graphic Design (Print & Web)\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"01_3.png\"},{\"feature_title\":\"Layout Design\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"02_3.png\"},{\"feature_title\":\"Infographics\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"03_3.png\"},{\"feature_title\":\"Video Production\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"04_3.png\"}]', '{\"section_title\":\"SPECIALIZATION OF BEST DIGITAL MARKETING AGENCY & BIG BUSINESS\",\"section_description\":\"Qolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibhamw liber tempor cum soluta nobis eleifend option congue nihil uarta decima e quinta. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcoreper suscipit lobortis.\",\"section_image\":\"thumb-service2.png\",\"accordion\":[{\"accordion_title\":\"Content seeding & distribution\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia,looked up one ojf the more ogsb scure Latinfet words, consectetur, from aorem .\"},{\"accordion_title\":\"Digital Advertising\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ojf the more ogsb secure Latinfet words, consectetur, from aorem .\"}]}', '#3cb878', 0, 'A-One Creative Service For Business & Professionals At Doodle Digital', 'creative service for business', 'Want cost-effective creative service for business? Doodle Digital has great specialization in providing responsive and functional web design layout, animations, graphical elements, infographics, etc.', 1, 1, 1, '2017-10-07 22:30:52', '2018-04-04 12:12:02', 2),
(7, 'Social Media Strategists', 'Provide Your Audience & Be Ready To Receive', 'social-media-strategists', 'social-media-strategists.png', '<h2 style=\"text-align:center\">Social Media Marketing Services At Doodle Digital</h2>\r\n\r\n<p>Just write &ldquo;effective social media marketing strategies&rdquo; or something similar and hit enter. What do you see? Google or Bing has come up with countless links pointing toward several social media marketing ideas.</p>\r\n\r\n<p>Adopting the most popular marketing strategies using social media seems a good step. But, how much good is really good for you? Among the so-called effective social media marketing strategies, the one that consistently delivers you new conversions, customers, and sales is the only good strategy you would want to use for your brand.</p>\r\n\r\n<p>Where will you find such a goal-driven social media marketing strategy? How do you supercharge your social media? You are just where you need to be.</p>\r\n\r\n<h3>Determining Objectives:</h3>\r\n\r\n<p>The heart of effective social media marketing strategies is a set of goals that companies work hard to achieve. Once you have decided to work with us; our experts will discuss the overall prospects and social media needs of your business.</p>\r\n\r\n<p>Then, they will determine specific and relevant goals that are both measurable and attainable, and of course, bound to a specific timeframe. Confused?</p>\r\n\r\n<p>For Facebook, we will create content and share photos that clearly communicate the culture and goals of your business. We will post two pieces of content and relevant photos each week, one on Monday and another on Thursday. We aim at getting at least 50 likes and 10 comments for each post and the accompanying photos. This is just an example. We can do even more for you.</p>\r\n\r\n<h3>Quality? Quantity? Or Both?</h3>\r\n\r\n<p>In a word, a mix of both.</p>\r\n\r\n<p>From our studies of the user demographics, we have learned one thing that people keep reading or sharing content that speaks to their heart, humor, feelings, and needs. For the past few years, we have done this (a little of both quantity and quality) several times and met great success.</p>\r\n\r\n<p>We have also seen that people want to get their favorite things almost daily, and sometimes, several times a day. We take this opportunity to instill the image of your brand into the audience through careful yet smart content development strategy, which is a very good part of effective social media marketing strategies.</p>\r\n\r\n<p>Among the posts we make for your social media development, promotional content makes twenty percent while educational content makes the rest. We create buyer personas and try to find out what customers believe is important for them.</p>\r\n\r\n<p>Our promotional content includes call-to-action text with useful information that customers would find useful. The information can be an offer of discount or a piece of very relevant information or statistics. We try to bring in influencer content that resonates with your business. Sometimes, we provide content that is written by an industry expert whose goal remains focused on helping people persuasively.</p>\r\n\r\n<h3>Post Scheduling:</h3>\r\n\r\n<p>To do this job properly, we have to know when your followers, subscribers, or target audiences are online. As said in the previous lines, we study user behaviors, interests, likes, dislikes, reactions, etc. to learn what specific time of the day is liked most by the majority of your followers. When people get something interesting every time they visit your page or attempt to see what new thing you have presented, the likelihood of success increases.</p>\r\n\r\n<p>We adopt the most advanced technique and tool to know when your audiences are online and how long they spend on the different social media channels. Even we use efficient tools to handle bulk posting.</p>\r\n\r\n<h3>How do we engage with followers?</h3>\r\n\r\n<p>To be honest, we have a set of very special techniques to ensure greater engagement with followers. Before working on this, we have several essentials in place, such as the socializing habits, interests, attentions, needs, and interactions of the followers. Combining insights from all these elements, we prepare a very detailed engagement plan that makes a crucial part of our effective social media marketing strategies.</p>\r\n\r\n<h3>&ldquo;We spend some time to look at the competitors.&rdquo;</h3>\r\n\r\n<p>Your competitors, both knowingly and unknowingly, offer a way to know what works best for you and what lowers the prospect of your brand. We include this as a critical step in our social media strategy outline.</p>\r\n\r\n<p>Before we even start applying any minor step, we observe how particular techniques are working for your competitors. We check into the content, media components, conversations, and other social interactions found on the pages/profiles of your competitor businesses. By doing this, we may know about the unforeseeable future of your brand&rsquo;s social media presence.</p>\r\n\r\n<h3>&ldquo;We track changes, progress, and the overall performance.&rdquo;</h3>\r\n\r\n<p>Since we love to call ours some of the most effective social media marketing strategies, we put together a lot of small details to make the whole thing work to your benefit. We keep an eye on every little and subtle changes in your social media metrics and take the required actions decisively to ensure that success comes on time.</p>\r\n\r\n<p>We can create a well-thought strategy for social media marketing for your business anytime leaving you only one task to do. We just want to know what you have to tell.</p>\r\n\r\n<h3><u>Important Highlights:</u></h3>\r\n\r\n<ul>\r\n	<li>Goal Setting</li>\r\n	<li>Mix of Quality &amp; Quantity</li>\r\n	<li>Social Media Content Management</li>\r\n	<li>User Engagement Techniques</li>\r\n	<li>Competitor Analysis</li>\r\n	<li>Performance Monitoring</li>\r\n</ul>', '<p>Doodle Digital is proud to offer effective social media marketing strategies for businesses that are struggling or looking to boost their social media metrics.</p>', '[{\"feature_title\":\"Strategy Development\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"01_6.png\"},{\"feature_title\":\"Content Creation\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"02_6.png\"},{\"feature_title\":\"Editorial Calendar Creation\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"03_6.png\"},{\"feature_title\":\"Organic Social Outreach\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"04_6.png\"},{\"feature_title\":\"Community Management\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"05_5.png\"},{\"feature_title\":\"Customer Service\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"06_5.png\"},{\"feature_title\":\"Social Listening\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"07_3.png\"},{\"feature_title\":\"Add Creation\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"08_1.png\"}]', '{\"section_title\":\"SPECIALIZATION OF BEST DIGITAL MARKETING AGENCY & BIG BUSINESS\",\"section_description\":\"Qolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibhamw liber tempor cum soluta nobis eleifend option congue nihil uarta decima e quinta. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcoreper suscipit lobortis.\",\"section_image\":\"thumb-service2.png\",\"accordion\":[{\"accordion_title\":\"Content seeding & distribution\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia,looked up one ojf the more ogsb scure Latinfet words, consectetur, from aorem .\"},{\"accordion_title\":\"Digital Advertising\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ojf the more ogsb secure Latinfet words, consectetur, from aorem .\"}]}', '#1d2d5d', 0, 'Effective Social Media Marketing Strategies Available For Your Brand', 'effective social media marketing strategies', 'Doodle Digital has designed time-tested and effective social media marketing strategies to help businesses with any kind of goals and objectives that they want to achieve using the power of social media.', 1, 1, 1, '2017-10-07 22:30:52', '2018-04-04 12:11:39', 2);
INSERT INTO `services` (`id`, `title`, `subtitle`, `slug`, `image`, `description`, `short_description`, `features`, `extra`, `background`, `views`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`, `layout`) VALUES
(8, 'Media Planning & Buying', 'Successful Media Planning With Adept Digital Consultants', 'media-planning-buying', 'media-planning-a-buying.png', '<h2 style=\"text-align:center\">Digital Media Agency Services At Doodle Digital</h2>\r\n\r\n<p>It is easy to find someone who is an expert and will tell you that you are doing great. But, we are not like those people who just avoid the truth and lead your brand to an unknown future.</p>\r\n\r\n<p>As a digital media agency, we can transform all your promotional and organizing efforts into an integrated approach to achieve sustainable success. So, who are we?</p>\r\n\r\n<p>Your media consultants?</p>\r\n\r\n<ul>\r\n	<li>Yes, if you can accept that we will always tell you what is TRUE about your business.</li>\r\n	<li>Yes, if you let us write your social media management POLICY and STRATEGY.</li>\r\n	<li>Yes, if you allow us to analyze your data and integrate your DIGITAL CONTENT.</li>\r\n	<li>Yes, if you need us to handle MEDIA PLANNING AND BUYING for you.</li>\r\n	<li>Yes, if you permit us to wear different HATS (SEO, Advertising, Web Management, Social Media) while working toward a common goal called SUCCESS.</li>\r\n</ul>\r\n\r\n<p>AND&hellip;&hellip;</p>\r\n\r\n<ul>\r\n	<li>No, if you want us to believe 10 LIKES are going to bring what you want.</li>\r\n	<li>No, if you always want us to tell &ldquo;Everything&rsquo;s just fine.&rdquo;</li>\r\n	<li>No, if you believe we are a sleazy digital media agency that can work without understanding your products, audience, and goals.</li>\r\n</ul>\r\n\r\n<h3>We take your Social Media into serious considerations.</h3>\r\n\r\n<p>We do not let you rejoice seeing just a hundred likes or shares. Even, we do not feel our job is well done if your page is getting higher counts of views than before in a just a few days after we have started working. We focus on improve your social metrics by targeting and engaging quality traffic consisting of enthusiastic followers, visitors, and potential buyers.</p>\r\n\r\n<h3>We handle the &lsquo;media planning and buying&rsquo; duty with great caution.</h3>\r\n\r\n<p>It is indeed a set of tasks that include making strategy, negotiation, purchases, and plans for digital inventory and ad placements. Everything before and after the initial purchases is included in our set of responsibilities.</p>\r\n\r\n<p>We keep doing the required optimization to ensure that the purchases are yielding an expected level of performance throughout the lifecycle of the campaign.</p>\r\n\r\n<p>As you have a brand to work for and talk about, we take into consideration all your social media and online efforts and work to make them translate to the ultimate growth of your business.</p>', '<p>Doodle Digital is like your all-in-one media consultant agency that handles media planning and buying and most other digital marketing services.</p>', '[{\"feature_title\":\"Budget Planning\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"01_5.png\"},{\"feature_title\":\"RTR Strategy\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"02_5.png\"},{\"feature_title\":\"Ad Optimization\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"03_5.png\"},{\"feature_title\":\"Sponsored Content\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"04_5.png\"},{\"feature_title\":\"Retargeting\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"05_4.png\"},{\"feature_title\":\"Geographic Targeting\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"06_4.png\"},{\"feature_title\":\"Add Creation\",\"feature_description\":\"Simple, easy to understand and rebot designed. These traitsing end.\",\"feature_image\":\"07_2.png\"}]', '{\"section_title\":\"SPECIALIZATION OF BEST DIGITAL MARKETING AGENCY & BIG BUSINESS\",\"section_description\":\"Qolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibhamw liber tempor cum soluta nobis eleifend option congue nihil uarta decima e quinta. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcoreper suscipit lobortis.\",\"section_image\":\"thumb-service2.png\",\"accordion\":[{\"accordion_title\":\"Content seeding & distribution\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia,looked up one ojf the more ogsb scure Latinfet words, consectetur, from aorem .\"},{\"accordion_title\":\"Digital Advertising\",\"accordion_description\":\"McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ojf the more ogsb secure Latinfet words, consectetur, from aorem .\"}]}', '#b011fa', 0, 'Media Planning Services At Doodle Digital | Your Digital Media Agency', 'digital media agency', 'Looking for a media consultant for your media planning and buying affairs? Doodle Digital is a full-service digital media agency that has been the trusted media consultant for many businesses. Learn more!', 1, 1, 1, '2017-10-07 22:30:52', '2018-04-04 12:11:08', 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
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
(10, 'site_meta_keywords', 'digital marketing agency', 1, 1, 1, 1, NULL, '2018-03-13 04:10:19'),
(11, 'site_meta_description', 'Doodle Digital is a full-service digital marketing agency that has a comprehensive arrangement to offer purposeful marketing that comes with a highly positive consequence for the client businesses.', 1, 1, 1, 1, NULL, '2018-03-13 04:11:01'),
(12, 'main_menu', 'a:1:{s:9:\"menu_item\";a:9:{i:1;a:8:{s:2:\"id\";s:1:\"1\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:5:\"About\";s:4:\"link\";s:6:\"/about\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:2;a:8:{s:2:\"id\";s:1:\"2\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:4:\"Team\";s:4:\"link\";s:5:\"/team\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:3;a:8:{s:2:\"id\";s:1:\"3\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:8:\"Services\";s:4:\"link\";s:0:\"\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:4;a:8:{s:2:\"id\";s:1:\"4\";s:4:\"p_id\";s:1:\"3\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:28:\"Website Design & Development\";s:4:\"link\";s:36:\"/packages/website-design-development\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:5;a:8:{s:2:\"id\";s:1:\"5\";s:4:\"p_id\";s:1:\"3\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:14:\"Shared Hosting\";s:4:\"link\";s:24:\"/packages/shared-hosting\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:6;a:8:{s:2:\"id\";s:1:\"6\";s:4:\"p_id\";s:1:\"3\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:18:\"Facebook Marketing\";s:4:\"link\";s:28:\"/packages/facebook-marketing\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:7;a:8:{s:2:\"id\";s:1:\"7\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:10:\"Portfolios\";s:4:\"link\";s:10:\"/portfolio\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:8;a:8:{s:2:\"id\";s:1:\"8\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:4:\"Blog\";s:4:\"link\";s:5:\"/blog\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:9;a:8:{s:2:\"id\";s:1:\"9\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:8:\"Contact \";s:4:\"link\";s:8:\"/contact\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}}}', 1, 1, 1, 1, NULL, '2018-10-31 10:48:50'),
(13, 'fb_page', 'http://facebook.com/smddtech', 1, NULL, 1, 1, NULL, NULL),
(14, 'gp_page', 'http://facebook.com/smddtech', 1, NULL, 1, 1, NULL, NULL),
(15, 'tt_page', 'http://facebook.com/smddtech', 1, NULL, 1, 1, NULL, NULL),
(16, 'li_page', 'http://facebook.com/smddtech', 1, NULL, 1, 1, NULL, NULL),
(17, 'youtube_page', 'http://facebook.com/smddtech', 1, NULL, 1, 1, NULL, NULL),
(18, 'about', 'SEOis a section of Search Engine Land that focuses not on search marketing advice but rather the search marketing industry.', 1, 1, 1, 2, NULL, '2018-10-30 11:18:45'),
(20, 'sm_theme_options_home_setting', 'a:46:{s:22:\"slider_change_autoplay\";s:1:\"3\";s:8:\"features\";a:4:{i:0;a:4:{s:13:\"feature_title\";s:15:\"SEO Performance\";s:19:\"feature_description\";s:98:\"Diversified optimizations for higher rank on Google and Bing in a few months after the indexation.\";s:12:\"feature_link\";s:1:\"#\";s:13:\"feature_image\";s:11:\"icon_01.png\";}i:1;a:4:{s:13:\"feature_title\";s:18:\"Network Protection\";s:19:\"feature_description\";s:103:\"State-of-the-art network security and protection to protect businesses from the latest malware attacks.\";s:12:\"feature_link\";s:1:\"#\";s:13:\"feature_image\";s:11:\"icon_02.png\";}i:2;a:4:{s:13:\"feature_title\";s:19:\"Speed Optimiziation\";s:19:\"feature_description\";s:96:\"Highest score on Google\'s page speed, GTmetrix, and Pingdom for every webpage or site we handle.\";s:12:\"feature_link\";s:1:\"#\";s:13:\"feature_image\";s:11:\"icon_03.png\";}i:3;a:4:{s:13:\"feature_title\";s:18:\"The Best Solutions\";s:19:\"feature_description\";s:102:\"Fail-proof, resilient SEO, top-notch security, zero downtime servers, and great UX for every business.\";s:12:\"feature_link\";s:1:\"#\";s:13:\"feature_image\";s:11:\"icon_04.png\";}}s:26:\"home_is_seo_section_enable\";s:1:\"1\";s:14:\"home_seo_title\";s:15:\"Your SEO Score?\";s:18:\"home_seo_btn_title\";s:12:\"Check up now\";s:17:\"seo_feature_title\";s:23:\"Journey To The 1st Page\";s:23:\"seo_feature_description\";s:241:\"Long or short, every trip to the first page of search engine involves proper coordination and implementation of multiple phases, such as research and analysis, planning, prototyping, and execution. Here’s a breakdown of the entire process.\";s:17:\"seo_feature_image\";s:11:\"seo-opt.png\";s:30:\"seo_feature_more_btn_is_enable\";s:1:\"1\";s:26:\"seo_feature_more_btn_label\";s:10:\"Learn more\";s:25:\"seo_feature_more_btn_link\";s:1:\"#\";s:31:\"seo_feature_quote_btn_is_enable\";s:1:\"1\";s:27:\"seo_feature_quote_btn_label\";s:11:\"Learn quote\";s:26:\"seo_feature_quote_btn_link\";s:1:\"#\";s:12:\"seo_features\";a:4:{i:0;a:4:{s:13:\"feature_title\";s:18:\"Research & Analyze\";s:12:\"feature_icon\";s:14:\"plac-icon1.png\";s:12:\"feature_link\";s:1:\"#\";s:19:\"feature_description\";s:325:\"We take different measures for different businesses. For a website that needs the attention of search engines, we research the opportunities and prospects for specific keywords/terms relevant to the industry. Once decided, we analyze the competitors who are already on the market doing the same business and bringing success.\";}i:1;a:4:{s:13:\"feature_title\";s:8:\"Planning\";s:12:\"feature_icon\";s:14:\"plac-icon2.png\";s:12:\"feature_link\";s:1:\"#\";s:19:\"feature_description\";s:331:\"We create a comprehensive plan based on the findings of the research and analysis phase. The plan includes everything for all segments of our company. It includes the design and development process, content development, search engine optimization work plans, social media engagement policy, and other relevant marketing procedures.\";}i:2;a:4:{s:13:\"feature_title\";s:11:\"Prototyping\";s:12:\"feature_icon\";s:14:\"plac-icon3.png\";s:12:\"feature_link\";s:1:\"#\";s:19:\"feature_description\";s:371:\"This phase helps us identify the best combination of our design, development, content, and overall marketing activities. We take a set of diverse action plans into consideration because we need to discover what is going to bring us the expected outcome. Although we cannot take years to purposefully this phase, we take intelligent approaches to make it effective anyway.\";}i:3;a:4:{s:13:\"feature_title\";s:18:\"Execution & Launch\";s:12:\"feature_icon\";s:14:\"plac-icon4.png\";s:12:\"feature_link\";s:4:\"test\";s:19:\"feature_description\";s:366:\"This is the phase we all start looking forward to finishing once we have readied the essentials, such as the website, content, visuals, social media setups, blog, and other assets. However, we have to abide by a set of rules and search engine regulations like Webmasters Tools of Google and Bing in order to stay free of any concern critical to the launch of a site.\";}}s:22:\"seo_marketing_subtitle\";s:15:\"WATCH THE VIDEO\";s:19:\"seo_marketing_title\";s:25:\"How Doodle Digital Works?\";s:25:\"seo_marketing_description\";s:919:\"<p>Since day one, we have been playing a game named Return on Investment (ROI). So, we perform only the targeted actions to deliver results measurable in real time. It all starts with a meeting held among our experts and consultants. Their discussion, actions, and interactions with the client lead to a complete plan that commands the next phases, workshop and coordination as we call. While working with adherence to the plan, our people keep an eye on the matter if coordination is existent among the groups and experts. Oftentimes, we don&rsquo;t have to worry about it. But, sometimes if needed, we take steps to ensure synergy in coordination among the workforce. Sometimes, a project with comprehensive goals experiences different changes in a brief time span. We take approaches to figure out the viable methods or adapt with the changing landscape. These four phases are the building blocks of our actions.</p>\";s:16:\"seo_video_banner\";s:12:\"about_bg.jpg\";s:26:\"seo_marketing_video_poster\";s:16:\"video-poster.png\";s:19:\"seo_marketing_video\";s:50:\"01._new_laravel_a_nodejs_project_shopping_cart.mp4\";s:18:\"home_service_title\";s:11:\"Our Service\";s:21:\"home_service_subtitle\";s:138:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\";s:8:\"services\";a:6:{i:0;a:5:{s:5:\"title\";s:7:\"Website\";s:11:\"description\";s:231:\"A website is an online screen of any product or company. The simple and eye-catching website plays a big role to collect customer or generate effective visitor.Bangladesh Software Development seems that website is a virtual office.\";s:4:\"link\";s:8:\"/website\";s:5:\"class\";s:12:\"bi bi-globe3\";s:13:\"service_image\";s:16:\"icon-03-01_1.png\";}i:1;a:5:{s:5:\"title\";s:8:\"Software\";s:11:\"description\";s:221:\"BSD popular in small customized Software.Any Business needs a Software for better operation and calculation.Almost 95% office does not use the software.That non-technical people need user-friendly and customized software.\";s:4:\"link\";s:9:\"/software\";s:5:\"class\";s:18:\"bi bi-finger-print\";s:13:\"service_image\";s:16:\"icon-03-02_1.png\";}i:2;a:5:{s:5:\"title\";s:14:\"Graphic Design\";s:11:\"description\";s:70:\"There are many variations of passages of Lorem Ipsum, but the majority\";s:4:\"link\";s:1:\"#\";s:5:\"class\";s:10:\"bi bi-bond\";s:13:\"service_image\";s:16:\"icon-03-03_1.png\";}i:3;a:5:{s:5:\"title\";s:14:\"Best Equipment\";s:11:\"description\";s:70:\"There are many variations of passages of Lorem Ipsum, but the majority\";s:4:\"link\";s:1:\"#\";s:5:\"class\";s:11:\"bi bi-tools\";s:13:\"service_image\";s:14:\"icon-03-04.png\";}i:4;a:5:{s:5:\"title\";s:15:\"Premium Support\";s:11:\"description\";s:70:\"There are many variations of passages of Lorem Ipsum, but the majority\";s:4:\"link\";s:1:\"#\";s:5:\"class\";s:13:\"bi bi-support\";s:13:\"service_image\";s:14:\"icon-03-05.png\";}i:5;a:5:{s:5:\"title\";s:17:\"Responsive Design\";s:11:\"description\";s:70:\"There are many variations of passages of Lorem Ipsum, but the majority\";s:4:\"link\";s:1:\"#\";s:5:\"class\";s:24:\"bi bi-accordion-vertical\";s:13:\"service_image\";s:14:\"icon-03-06.png\";}}s:17:\"achievement_title\";s:16:\"Our Achievements\";s:23:\"achievement_description\";s:112:\"We work hard and expect an outcome that will work as a foundation of our stranding and reputation over the years\";s:17:\"achievement_image\";s:16:\"activity-img.png\";s:13:\"total_project\";s:3:\"222\";s:19:\"total_active_client\";s:3:\"333\";s:18:\"total_success_rate\";s:2:\"98\";s:16:\"total_commitment\";s:3:\"100\";s:9:\"wcu_title\";s:26:\"Why Choose Doodle Digital?\";s:12:\"wcu_subtitle\";s:62:\"Many Services! Big Claims Everywhere! Then, why us? Because...\";s:15:\"wcu_description\";s:845:\"<ul>\r\n	<li>We Deliver On Time And Every Time.</li>\r\n	<li>We Work Believing Your Business Is Ours Too.</li>\r\n	<li>We Prefer Measurable Marketing To No Guesswork.</li>\r\n	<li>We Measure The Result And Make Adjustment To The Plan.</li>\r\n	<li>Our Actions Reflect Your Brand&rsquo;s Vitality To Bring Result As Desired.</li>\r\n	<li>We Are Comfortable With Requests For Revision In Our Work With No Excuse.</li>\r\n	<li>Our &ldquo;Quality Assessment And Control&rdquo; Operation Is Well Organized And Disciplined.</li>\r\n	<li>We Don&rsquo;t Prioritize A Project By Its Budget. We Work As Per The Agreement With The Client.</li>\r\n	<li>We Keep Testing And Reviewing Our Strategy And Technique To Find Out What Works And What Not.</li>\r\n	<li>We Accept Criticism And If Needed Offer The Constructive And Unbiased, So The Client Can Benefit From It.</li>\r\n</ul>\";s:9:\"wcu_image\";s:19:\"why-choose-img1.png\";s:13:\"case_subtitle\";s:103:\"We have worked on projects that incorporate our expertise from website development to digital marketing\";s:10:\"case_title\";s:12:\"Case Studies\";s:9:\"case_show\";s:1:\"3\";s:22:\"home_testimonial_style\";s:8:\"bg-black\";s:10:\"blog_title\";s:11:\"Latest Blog\";s:13:\"blog_subtitle\";s:85:\"Stay informed of what’s trending and upcoming in the digital world through our blog\";s:16:\"blog_description\";s:2:\"NA\";s:9:\"blog_show\";N;s:14:\"branding_title\";s:16:\"Esteemed Clients\";s:17:\"branding_subtitle\";s:79:\"Get to know about the people and brands that entrusted us with their businesses\";s:5:\"logos\";s:101:\"brand-logo-6.png,brand-logo-5.png,brand-logo-4.png,brand-logo-3.png,brand-logo-2.png,brand-logo-1.png\";}', 1, 1, 1, 2, NULL, '2018-10-31 09:41:17'),
(21, 'sm_theme_options_contact_setting', 'a:23:{s:20:\"contact_banner_title\";s:10:\"CONTACT US\";s:23:\"contact_banner_subtitle\";s:36:\"Give Us A Question & Take The Answer\";s:20:\"contact_banner_image\";s:22:\"contact-us-baner_1.png\";s:13:\"contact_title\";s:14:\"We Always Help\";s:16:\"contact_subtitle\";s:78:\"It is Easy To Reach Us For Any Digital Marketing Support Anytime From Anywhere\";s:17:\"contact_des_title\";s:15:\"CONNECT WITH US\";s:19:\"contact_description\";s:1336:\"<p>We have tried to discuss each of <a href=\"https://doodledigital.net/services\" id=\"/\" name=\"/\">our packages and services</a> as comprehensively as it is required to convey our audience the right message about what we can achieve or help you succeed in this complicated and overly challenging digital marketing landscape. That&rsquo;s what we aim at as a digital marketing agency.</p>\r\n\r\n<p>But, we think it is common that you still want to know more because of the vastness of the category of services we offer. We have introduced <a href=\"https://doodledigital.net/blog\" id=\"/services\" name=\"/services\">Doodle Digital Blog</a> to help you understand what happens in digital marketing and how to have a deep understanding of what to expect under the existing circumstances. Also, we have tried to inform you of our responsibilities as a digital marketing agency.</p>\r\n\r\n<p>It is still understandable if you say you want to know more about success in this world and how it can be in your possession. So, you have got a question?</p>\r\n\r\n<p>Being more upfront, can we expect you have decided to try one of our <a href=\"https://doodledigital.net/packages/\">excellent services and packages</a><a id=\"/services\" name=\"/services\">?</a></p>\r\n\r\n<p>Regardless of whatever crosses your mind, please feel free to contact us; write/talk to us.</p>\";s:18:\"contact_form_title\";s:18:\"LEAVE US A MESSAGE\";s:28:\"contact_form_success_message\";s:64:\"Mail successfully send. We will contact you as soon as possible.\";s:20:\"contact_branch_image\";s:20:\"contact-info-bg1.png\";s:20:\"contact_branch_title\";s:12:\"Our branches\";s:23:\"contact_branch_subtitle\";s:33:\"The Places Where We Work Together\";s:16:\"contact_branches\";a:3:{i:0;a:6:{s:5:\"title\";s:3:\"USA\";s:7:\"address\";s:60:\"250 Chism St. #C-3 Reno, NV 89503, United States of America.\";s:14:\"footer_address\";s:34:\"250 Chism St. #C-3 Reno, NV 89503.\";s:5:\"email\";s:21:\"usa@doodledigital.net\";s:6:\"mobile\";s:14:\"(775) 464-1819\";s:5:\"image\";s:12:\"usa-flag.png\";}i:1;a:6:{s:5:\"title\";s:12:\"Saudi Arabia\";s:7:\"address\";s:71:\"Yaeesh Plaza Ground Floor, Jeddah st. P.O.Box-31242, Jubail 31951, KSA.\";s:14:\"footer_address\";s:39:\"Jeddah st. P.O.Box-31242, Jubail 31951.\";s:5:\"email\";s:21:\"ksa@doodledigital.net\";s:6:\"mobile\";s:16:\"+966 13 361 2322\";s:5:\"image\";s:14:\"soudi-flag.png\";}i:2;a:6:{s:5:\"title\";s:10:\"Bangladesh\";s:7:\"address\";s:63:\"730/3 West Kazipara, 7th Floor, Mirpur, Dhaka 1216, Bangladesh.\";s:14:\"footer_address\";s:27:\"730/3 West Kazipara, Dhaka.\";s:5:\"email\";s:20:\"bd@doodledigital.net\";s:6:\"mobile\";s:16:\"+880 1753 656542\";s:5:\"image\";s:19:\"bangladesh-flag.png\";}}s:19:\"contact_share_title\";s:13:\"Share With Us\";s:19:\"contact_share_image\";s:15:\"socail-flag.png\";s:22:\"contact_location_title\";s:14:\"Map & Location\";s:25:\"contact_location_subtitle\";s:32:\"Our Locations At Your Fingertips\";s:25:\"contact_location_latitude\";s:9:\"23.797424\";s:26:\"contact_location_longitude\";s:9:\"90.369409\";s:31:\"newsletter_form_success_message\";s:24:\"Subscribed successfully.\";s:17:\"contact_seo_title\";s:67:\"Contact Doodle Digital | Find Your Trusted Digital Marketing Agency\";s:21:\"contact_meta_keywords\";s:24:\"digital marketing agency\";s:24:\"contact_meta_description\";s:214:\"With the continually changing situations of online marketing, businesses from the startups to the most credible ones look for an n efficient digital marketing agency. Here’s the key. Contact Doodle Digital today!\";}', 1, 1, 1, 2, NULL, '2018-10-31 08:23:03'),
(22, 'sm_theme_options_about_setting', 'a:12:{s:18:\"about_banner_title\";s:8:\"ABOUT US\";s:21:\"about_banner_subtitle\";s:34:\"The Story Of A Visionary Community\";s:18:\"about_banner_image\";s:13:\"our-story.jpg\";s:9:\"wwr_title\";s:10:\"Who we are\";s:12:\"wwr_subtitle\";N;s:15:\"wwr_description\";s:1648:\"<p>Doodle Digital is a growing digital media marketing agency operating with magnificent performance in the different segments of digital marketing since its establishment in 2017. It is now over a year that we have been in the business of helping businesses grow from a small startup to rising brands with huge potentials.</p>\r\n\r\n<p>Integrating a few small groups of motivated people with diverse expertise into a family of internet professionals who are credible, experienced, amplifiable, and adaptive to the changing requirements of world of Internet. An impressive thing about the people here is their formidable attention to bring the desired outcome of their efforts.</p>\r\n\r\n<p>Each person working at Doodle Digital feel like being the organ of an entire body of digital marketing firm. We have digital marketing professionals of all levels of experience and knowledge, from the enthusiastic beginners to the seasoned marketers whose success stories might appease the mind of even the most discerning entrepreneur.</p>\r\n\r\n<p>One of the strongest aspects of our character as a digital marketing firm is our high level of adaptability to the changing requirements and spectrum of online marketing. Each professional keeps an eye on Google&rsquo;s statement as it comes into light. We try to read between the lines of what search engines present us.</p>\r\n\r\n<p>Another aspect of our professional that we boast having is our tenacity and tendency to accept and work with new technologies that come with the promise to enrich people&rsquo;s experience using the World Wide Web. So, we do not fail to catch up with the dynamics of what matters.</p>\";s:11:\"our_mission\";s:547:\"<p>We have no regrets admitting that we are not like a large organization that sets dozens of missions to accomplish. We are not engaged in seeking profits all the time either. But, we have a very particular mission that, we believe, helps and will aid us in thriving.</p>\r\n\r\n<p>We dream about contributing to make the digital marketing landscape a dynamic world wherein businesses will start, grow, and become a brand having a critical focus on improving people&rsquo;s life by offering them values, insights, conveniences, and opportunities.</p>\";s:10:\"our_vision\";s:641:\"<p>We envision the world of digital marketing as a place for those who look forward to serving others and make a living by honest means. We do possess no hatred for squalid professionals whose only mission is to play false the search engines and spread sweet talks with stories of some instant success to take advantage of disappointed entrepreneurs.</p>\r\n\r\n<p>We reiterate our vision vividly as we welcome a new member to our family, so the new person has the chance to share a common interest. We are proud that we the only mission and one vision have been very influential to tie us together towards a common goal, SUCCESS we call it.</p>\";s:23:\"about_testimonial_style\";N;s:15:\"about_seo_title\";s:66:\"About Doodle Digital | The One-Stop Digital Media Marketing Agency\";s:19:\"about_meta_keywords\";s:30:\"digital media marketing agency\";s:22:\"about_meta_description\";s:208:\"Doodle Digital is passing its first year as a new yet promising digital media marketing agency to work with the mission to help make the digital marketing avenue more reliable for people and businesses alike.\";}', 1, 1, 1, 2, NULL, '2018-10-31 08:21:54'),
(23, 'sm_theme_options_testimonial_setting', 'a:2:{s:17:\"testimonial_title\";s:28:\"What Our Valued Clients Say!\";s:12:\"testimonials\";a:5:{i:0;a:6:{s:5:\"title\";s:13:\"Katti Simpson\";s:12:\"company_name\";s:0:\"\";s:11:\"description\";s:331:\"We threw Doodle Digital a bone, too hard to crush. But, their art of catching the momentum and carrying that over to its right place is simply outstanding. These people gathered me a huge amount of quality traffic in just five months; needless to say, the ranking was high enough. Can you believe that? Well, do…because they can!\";s:17:\"testimonial_image\";s:11:\"thumb-3.png\";s:16:\"testimonial_logo\";s:9:\"sapem.png\";s:22:\"testimonial_logo_about\";s:12:\"clogo3_1.png\";}i:1;a:6:{s:5:\"title\";s:18:\"Barbara R. Farrell\";s:12:\"company_name\";s:0:\"\";s:11:\"description\";s:413:\"I love Doodle Digital for a very particular trait of their character: Adaptability. The combination of the workforce they maintain during a project amazed me although their work plan seemed a little unconventional. The team brought me the required amount of leads and made the conversion easier than I wanted. Truthfully speaking, they are the only and best digital marketing agency that exceeded my expectations.\";s:17:\"testimonial_image\";s:11:\"thumb-2.png\";s:16:\"testimonial_logo\";s:13:\"sungchang.png\";s:22:\"testimonial_logo_about\";s:12:\"clogo3_1.png\";}i:2;a:6:{s:5:\"title\";s:17:\"James K. Ackerson\";s:12:\"company_name\";s:0:\"\";s:11:\"description\";s:408:\"We found it had to entrust our million-dollar brand to a digital marketing company, this new. But, to be honest, you can barely express any sign of dissatisfaction. It was a miracle how they boosted our site that used to appear on the 10th page of Google after a major hit. We are happy to see the site ranking on Google’s first page. Doodle Digital is, in my experience, the best digital marketing agency.\";s:17:\"testimonial_image\";s:11:\"thumb-1.png\";s:16:\"testimonial_logo\";s:22:\"samsung_logo_png14.png\";s:22:\"testimonial_logo_about\";s:12:\"clogo3_1.png\";}i:3;a:6:{s:5:\"title\";s:16:\"Irene T. Badillo\";s:12:\"company_name\";s:0:\"\";s:11:\"description\";s:391:\"The team at Doodle Digital is big and impeccably skilled to finish a detail-oriented digital marketing project on time. This is my observation after working with them as a client for the past eight months. We wanted them to work on a few sites that were suffering from poor rankings. They promised better ranks, not necessarily the top position. Well, they delivered. Really proud of them!!!\";s:17:\"testimonial_image\";s:11:\"thumb-4.png\";s:16:\"testimonial_logo\";s:34:\"pan-gulf-industrial-system-co..png\";s:22:\"testimonial_logo_about\";s:12:\"clogo3_1.png\";}i:4;a:6:{s:5:\"title\";s:13:\"Mary G. Rosen\";s:12:\"company_name\";s:0:\"\";s:11:\"description\";s:480:\"I hired Doodle Digital on two separate projects: One included a responsive web design and another a goal-driven marketing project. So, I got a concrete proof whether they are good or bad. The design was great and adaptive. Honestly, on the second job, they brought me an amazing result in less than three months. Don’t ask me \'cause I don’t know how. I had to spend a little more than my expectation, but that wasn’t their fault, and the result is worth the additional cost.\";s:17:\"testimonial_image\";s:11:\"thumb-3.png\";s:16:\"testimonial_logo\";s:12:\"gusan-co.png\";s:22:\"testimonial_logo_about\";s:12:\"clogo3_1.png\";}}}', 1, 1, 1, 2, NULL, '2018-10-31 07:18:21'),
(24, 'sm_theme_options_team_setting', 'a:9:{s:17:\"team_banner_title\";s:16:\"Our Dynamic Team\";s:20:\"team_banner_subtitle\";s:27:\"The People You Can Count On\";s:17:\"team_banner_image\";s:12:\"our-team.jpg\";s:10:\"team_title\";s:11:\"Our Talents\";s:13:\"team_subtitle\";s:86:\"Meet our experts and team members whose prowess and acumen are our greatest treasures.\";s:5:\"teams\";a:24:{i:0;a:9:{s:10:\"team_image\";s:16:\"team-image-7.jpg\";s:5:\"title\";s:25:\"Engr. Mizanur Rahman Khan\";s:11:\"designation\";s:32:\"Project Manager & Lead Developer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:19:\"mizan@getwebinc.com\";s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:11:\"google_plus\";s:1:\"#\";s:8:\"linkedin\";s:1:\"#\";}i:1;a:9:{s:10:\"team_image\";s:16:\"team-image-6.jpg\";s:5:\"title\";s:12:\"Nayeem Farid\";s:11:\"designation\";s:20:\"Senior Web Developer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:20:\"nayeem@getwebinc.com\";s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:11:\"google_plus\";s:1:\"#\";s:8:\"linkedin\";s:1:\"#\";}i:2;a:9:{s:10:\"team_image\";s:16:\"team-image-5.jpg\";s:5:\"title\";s:13:\"Rajib Hossain\";s:11:\"designation\";s:22:\"Sr. Software Developer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:3;a:9:{s:10:\"team_image\";s:16:\"team-image-8.jpg\";s:5:\"title\";s:17:\"Abu Sayed Russell\";s:11:\"designation\";s:20:\"Senior Web Developer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:4;a:9:{s:10:\"team_image\";s:6:\"13.jpg\";s:5:\"title\";s:17:\"Abdur Rahim Rasel\";s:11:\"designation\";s:23:\"Sr. Front End Developer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:5;a:9:{s:10:\"team_image\";s:8:\"10_2.jpg\";s:5:\"title\";s:22:\"Mohammad Jakir Hossain\";s:11:\"designation\";s:19:\"Front End Developer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:6;a:9:{s:10:\"team_image\";s:6:\"14.jpg\";s:5:\"title\";s:15:\"Kazi Arif Hasan\";s:11:\"designation\";s:30:\"Content Manager & Proof Reader\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:7;a:9:{s:10:\"team_image\";s:6:\"16.jpg\";s:5:\"title\";s:13:\"Sultan Mahmud\";s:11:\"designation\";s:14:\"Content Writer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:8;a:9:{s:10:\"team_image\";s:8:\"12_7.jpg\";s:5:\"title\";s:14:\"Rubaitul Islam\";s:11:\"designation\";s:14:\"Content Writer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:9;a:9:{s:10:\"team_image\";s:6:\"19.jpg\";s:5:\"title\";s:12:\"Robiul Islam\";s:11:\"designation\";s:21:\"Sr. Graphics Designer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:10;a:9:{s:10:\"team_image\";s:6:\"20.jpg\";s:5:\"title\";s:13:\"Mohammad Robi\";s:11:\"designation\";s:16:\"Graphic Designer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:11;a:9:{s:10:\"team_image\";s:7:\"3_2.jpg\";s:5:\"title\";s:13:\"Naymul Hoque \";s:11:\"designation\";s:21:\"Sr. Graphics Designer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:12;a:9:{s:10:\"team_image\";s:7:\"5_1.jpg\";s:5:\"title\";s:13:\"Shazzad Shafi\";s:11:\"designation\";s:21:\"Sr. Graphics Designer\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:13;a:9:{s:10:\"team_image\";s:8:\"11_1.jpg\";s:5:\"title\";s:17:\"Zakir Hossain Joy\";s:11:\"designation\";s:24:\"VFX & Animation Director\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:14;a:9:{s:10:\"team_image\";s:7:\"2_2.jpg\";s:5:\"title\";s:18:\"Muhammad Nure Alam\";s:11:\"designation\";s:32:\"Sr. Graphics Designer & Animator\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:15;a:9:{s:10:\"team_image\";s:6:\"18.jpg\";s:5:\"title\";s:16:\"Md Humayun Kabir\";s:11:\"designation\";s:12:\"Video Editor\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:16;a:9:{s:10:\"team_image\";s:7:\"8_1.jpg\";s:5:\"title\";s:11:\"Azmin Abrar\";s:11:\"designation\";s:15:\"SEO Team Leader\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:17;a:9:{s:10:\"team_image\";s:15:\"tanvir-bhai.jpg\";s:5:\"title\";s:17:\"Md. Tanvir Ahmmed\";s:11:\"designation\";s:17:\"SEO & SMM Expert \";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:18;a:9:{s:10:\"team_image\";s:8:\"riad.jpg\";s:5:\"title\";s:21:\"Mohammad Riadul Islam\";s:11:\"designation\";s:13:\"SEO Executive\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:19;a:9:{s:10:\"team_image\";s:7:\"7_1.jpg\";s:5:\"title\";s:24:\"Mohaiminul Hossain Tamim\";s:11:\"designation\";s:13:\"SEO Executive\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:20;a:9:{s:10:\"team_image\";s:13:\"all-image.jpg\";s:5:\"title\";s:17:\"Maruf Islam Nirob\";s:11:\"designation\";s:13:\"SEO Executive\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:21;a:9:{s:10:\"team_image\";s:7:\"6_1.jpg\";s:5:\"title\";s:10:\"Aseef Aumy\";s:11:\"designation\";s:20:\"OFF-Page SEO Expert \";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:22;a:9:{s:10:\"team_image\";s:7:\"9_1.jpg\";s:5:\"title\";s:10:\"Ovi Rahman\";s:11:\"designation\";s:13:\"SEO Executive\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:23;a:9:{s:10:\"team_image\";s:7:\"4_1.jpg\";s:5:\"title\";s:18:\"Ashraful Islam Omi\";s:11:\"designation\";s:13:\"SMM Executive\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}}s:14:\"team_seo_title\";s:69:\"Join Doodle Digital | Be The Part Of A Smart Digital Marketing Agency\";s:18:\"team_meta_keywords\";s:24:\"Digital Marketing Agency\";s:21:\"team_meta_description\";s:195:\"Doodle Digital employs different groups of internet professionals among who you will find marketers, writers, and designers of all levels of skills. Learn more about the digital marketing agency!\";}', 1, 1, 1, 2, NULL, '2018-10-31 08:22:55'),
(25, 'sm_theme_options_services_setting', 'a:14:{s:20:\"service_banner_title\";s:23:\"Our All-Around Services\";s:23:\"service_banner_subtitle\";s:41:\"Supports For Any Business, Any Individual\";s:20:\"service_banner_image\";s:13:\"breadcumb.png\";s:13:\"service_title\";s:39:\"Full Services of Our <br>Digital Agency\";s:16:\"service_subtitle\";s:77:\"Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium.\";s:17:\"service_seo_image\";s:13:\"seo_image.png\";s:17:\"service_seo_title\";s:26:\"Search Engine Optimization\";s:23:\"service_seo_description\";s:818:\"Search engine marketing has evolved a way faster than other online services. To cope with the                            fast-changing scenario in digital marketing, Doodle Digital has adopted tried and true                            techniques and up-to-date insights to be able to assist businesses of all levels, from small                            concerns to large corporations with their digital marketing goals.Being committed to making                            online marketing services easy, affordable, and useful for businesses, we cooperate with                            professionals at different levels and interact with people, so we know how people think,                            buy,                            and live. This is how, we create each of our search engine marketing strategies.\";s:16:\"service_seo_link\";s:1:\"#\";s:23:\"services_posts_per_page\";s:1:\"7\";s:29:\"services_is_breadcrumb_enable\";s:1:\"0\";s:18:\"services_seo_title\";s:53:\"The Most Affordable Digital Marketing Agency Services\";s:22:\"services_meta_keywords\";s:24:\"Digital marketing agency\";s:25:\"services_meta_description\";s:211:\"Doodle Digital has a perfect arrangement to offer first-rate digital marketing agency services to a wide variety of concerns including small and large organizations and meet their special preferences. Read more!\";}', 1, 1, 1, 2, NULL, '2018-10-30 09:35:56'),
(26, 'sm_theme_options_blog_setting', 'a:9:{s:19:\"blog_posts_per_page\";s:1:\"9\";s:17:\"blog_banner_title\";s:8:\"Our Blog\";s:20:\"blog_banner_subtitle\";s:27:\"We Share Everything We Know\";s:17:\"blog_banner_image\";s:23:\"blog-details-banner.jpg\";s:25:\"blog_is_breadcrumb_enable\";s:1:\"0\";s:13:\"blog_ad_image\";s:8:\"badd.jpg\";s:14:\"blog_seo_title\";s:68:\"Doodle Digital Blog | Insights From A Great Digital Marketing Agency\";s:18:\"blog_meta_keywords\";s:24:\"Digital marketing agency\";s:21:\"blog_meta_description\";s:251:\"Being a knowledgeable and active digital marketing agency, Doodle Digital keeps learning and informing people who might need to know trends and insights about different avenues of digital marketing and the world of Internet. Read more to stay updated!\";}', 1, 1, 1, 2, NULL, '2018-10-31 08:23:53'),
(27, 'sm_theme_options_blog_detail_setting', 'a:6:{s:24:\"blog_detail_banner_title\";s:9:\"BLOG HOME\";s:27:\"blog_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:24:\"blog_detail_banner_image\";s:25:\"blog-details-banner_1.jpg\";s:32:\"blog_detail_is_breadcrumb_enable\";s:1:\"0\";s:27:\"blog_related_posts_per_page\";s:1:\"4\";s:22:\"blog_comments_per_page\";s:1:\"4\";}', 1, 1, 1, 2, NULL, '2018-10-31 08:24:12'),
(28, 'sm_theme_options_case_setting', 'a:8:{s:17:\"case_banner_title\";s:13:\"Our Portfolio\";s:20:\"case_banner_subtitle\";s:26:\"Stories We Want To Divulge\";s:17:\"case_banner_image\";s:24:\"case-detals-banner_1.jpg\";s:25:\"case_is_breadcrumb_enable\";s:1:\"0\";s:19:\"case_posts_per_page\";s:1:\"9\";s:14:\"case_seo_title\";s:62:\"Case Studies | The Success Tales Of A Digital Marketing agency\";s:18:\"case_meta_keywords\";s:24:\"Digital marketing agency\";s:21:\"case_meta_description\";N;}', 1, 1, 1, 2, NULL, '2018-10-31 10:47:56'),
(29, 'sm_theme_options_case_detail_setting', 'a:4:{s:24:\"case_detail_banner_title\";s:12:\"CASE DETAILS\";s:27:\"case_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:24:\"case_detail_banner_image\";s:14:\"breadcumb2.png\";s:32:\"case_detail_is_breadcrumb_enable\";s:1:\"0\";}', 1, 1, 1, 2, NULL, '2018-02-01 00:15:57'),
(30, 'sm_theme_options_blog_sidebar_setting', 'a:6:{s:22:\"blog_popular_is_enable\";s:1:\"1\";s:27:\"blog_popular_posts_per_page\";s:1:\"5\";s:18:\"blog_show_category\";s:1:\"1\";s:13:\"blog_show_tag\";s:1:\"1\";s:15:\"blog_sidebar_ad\";s:14:\"add-banner.png\";s:20:\"blog_sidebar_ad_link\";s:1:\"#\";}', 1, 1, 1, 2, NULL, '2018-10-30 09:35:56'),
(31, 'sm_theme_options_social_setting', 'a:10:{s:15:\"social_facebook\";s:1:\"#\";s:14:\"social_twitter\";s:1:\"#\";s:15:\"social_linkedin\";s:1:\"#\";s:18:\"social_google_plus\";s:1:\"#\";s:13:\"social_github\";N;s:16:\"social_pinterest\";s:1:\"#\";s:14:\"social_behance\";s:1:\"#\";s:15:\"social_dribbble\";s:1:\"#\";s:16:\"social_instagram\";N;s:14:\"social_youtube\";N;}', 1, 1, 1, 2, NULL, '2018-01-06 01:08:17'),
(32, 'sm_theme_options_footer_setting', 'a:6:{s:11:\"footer_logo\";s:8:\"logo.png\";s:20:\"footer_widget4_title\";s:10:\"QUICK LINK\";s:26:\"footer_widget4_description\";s:333:\"<ul>\r\n	<li><a href=\"/blog\">Blog</a></li>\r\n	<li><a href=\"/faq\">FAQ&rsquo;s</a></li>\r\n	<li><a href=\"/about\">About us</a></li>\r\n	<li><a href=\"/contact\">Contact</a></li>\r\n	<li><a href=\"/team\">Our Team</a></li>\r\n	<li><a href=\"/privacy-policy\">Privacy Policy</a></li>\r\n	<li><a href=\"/terms-conditions\">Terms &amp; Condition</a></li>\r\n</ul>\";s:20:\"footer_widget3_title\";s:13:\"QUICK CONTACT\";s:26:\"footer_widget3_description\";s:1411:\"<ul>\r\n	<li><span style=\"color:rgb(221, 221, 221)\">Phone</span>\r\n	<p><a href=\"tel:+01234567890123\" style=\"box-sizing: border-box; color: rgb(119, 119, 119); text-decoration-line: none; background-color: transparent; touch-action: manipulation; transition: all 0.3s ease-in-out 0s;\">+01234567890123</a></p>\r\n\r\n	<p><a href=\"tel:+01234567890124\" style=\"box-sizing: border-box; color: rgb(119, 119, 119); text-decoration-line: none; background-color: transparent; touch-action: manipulation; transition: all 0.3s ease-in-out 0s;\">+01234567890124</a></p>\r\n	</li>\r\n	<li><span style=\"color:rgb(221, 221, 221)\">Email</span>\r\n	<p><a href=\"file:///E:/httrack/Karbar%20-%20Multipurpose%20Bootstrap4%20Template/karbar/blog-left-sidebar.html#\" style=\"box-sizing: border-box; color: rgb(119, 119, 119); text-decoration-line: none; background-color: transparent; touch-action: manipulation; transition: all 0.3s ease-in-out 0s;\">info@example.com</a></p>\r\n\r\n	<p><a href=\"file:///E:/httrack/Karbar%20-%20Multipurpose%20Bootstrap4%20Template/karbar/blog-left-sidebar.html#\" style=\"box-sizing: border-box; color: rgb(119, 119, 119); text-decoration-line: none; background-color: transparent; touch-action: manipulation; transition: all 0.3s ease-in-out 0s;\">info@example.com</a></p>\r\n	</li>\r\n	<li><span style=\"color:rgb(221, 221, 221)\">Address</span>\r\n	<p>34/5 evergreen road, karbar city New work, United States</p>\r\n	</li>\r\n</ul>\";s:9:\"copyright\";s:52:\"@2018 Next Page Technology Ltd. All rights reserved.\";}', 1, 1, 1, 2, NULL, '2018-10-31 11:21:50'),
(33, 'country', 'Bangladesh', 1, 1, 1, 2, NULL, '2018-10-30 11:18:45'),
(34, 'caching_time_in_minutes', '10', 1, 1, 1, 1, NULL, NULL),
(35, 'sm_theme_options_services_detail_setting', 'a:5:{s:27:\"service_detail_banner_title\";s:19:\"OUR SERVICES Detail\";s:30:\"service_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:27:\"service_detail_banner_image\";s:15:\"blog-banner.png\";s:35:\"service_detail_is_breadcrumb_enable\";s:1:\"0\";s:25:\"service_detail_mail_title\";s:28:\"Hire Us<br>15 Day FREE Trial\";}', 1, 1, 1, 2, NULL, '2018-10-30 09:35:56'),
(36, 'sm_theme_options_package_detail_setting', 'a:10:{s:35:\"package_detail_is_breadcrumb_enable\";s:1:\"0\";s:26:\"package_pricing_info_title\";s:12:\"Pricing Plan\";s:25:\"package_detail_move_title\";s:20:\"Move to Package info\";s:24:\"package_detail_move_icon\";s:8:\"fa-heart\";s:11:\"step1_image\";s:23:\"digital-advertising.jpg\";s:11:\"step1_title\";s:21:\"Money Back Guaranteed\";s:17:\"step1_description\";s:72:\"We\'re ready to accept your request for a refund that meets the criteria.\";s:11:\"step3_image\";s:23:\"digital-advertising.jpg\";s:11:\"step3_title\";s:23:\"Satisfaction Guaranteed\";s:17:\"step3_description\";s:71:\"We do everything within our reach to deliver you and bring satisfaction\";}', 1, 1, 1, 2, NULL, '2018-10-31 10:00:35'),
(37, 'sm_theme_options_package_setting', 'a:5:{s:20:\"package_banner_title\";s:16:\"VIEW ALL PACKAGE\";s:23:\"package_banner_subtitle\";s:64:\"A World of Opportunities We all know that content has to be good\";s:20:\"package_banner_image\";s:23:\"digital-advertising.jpg\";s:28:\"package_is_breadcrumb_enable\";s:1:\"0\";s:22:\"package_posts_per_page\";s:1:\"2\";}', 1, 1, 1, 2, NULL, '2018-10-31 09:56:07'),
(38, 'is_tax_enable', '0', 1, 1, 1, 2, NULL, '2017-12-05 01:11:45'),
(39, 'default_tax', '10', 1, 1, 1, 2, NULL, '2017-11-18 23:20:39'),
(40, 'default_tax_type', '2', 1, 1, 1, 2, NULL, '2017-11-19 00:29:35'),
(41, 'sm_theme_options_order_setting', 'a:7:{s:20:\"order_posts_per_page\";s:2:\"10\";s:17:\"invoice_signature\";s:13:\"signature.png\";s:24:\"invoice_approved_by_name\";s:20:\"muhammad shah sultan\";s:31:\"invoice_approved_by_designation\";s:23:\"Director of Development\";s:20:\"invoice_banner_title\";s:7:\"Invoice\";s:23:\"invoice_banner_subtitle\";s:44:\"If you\'re struggling to get more information\";s:20:\"invoice_banner_image\";s:14:\"breadcumb2.png\";}', 1, 1, 1, 2, NULL, '2018-03-19 01:04:34'),
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
(62, 'seo_title', 'Digital Marketing Agency | Result-Oriented Marketing By Doodle Digital', 1, 1, 1, 2, NULL, '2018-03-13 04:21:03'),
(63, 'sm_theme_options_style_n_script_setting', 'a:3:{s:20:\"google_analytic_code\";s:668:\"<script>\r\n        (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n        })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n        ga(\'create\', \'UA-XXXXXXXX-X\', \'auto\');\r\n        ga(\'send\', \'pageview\');\r\n        ga(\'require\', \'linkid\', \'linkid.js\');\r\n        ga(\'require\', \'displayfeatures\');\r\n        setTimeout(\"ga(\'send\',\'event\',\'Profitable Engagement\',\'time on page more than 30 seconds\')\",30000);\r\n    </script>\";s:21:\"mrks_theme_custom_css\";N;s:20:\"mrks_theme_custom_js\";N;}', 1, 1, 1, 2, NULL, '2018-03-19 21:45:44');
INSERT INTO `settings` (`id`, `option_name`, `option_value`, `created_by`, `modified_by`, `autoload`, `status`, `created_at`, `updated_at`) VALUES
(64, 'sm_theme_options_faq_setting', 'a:5:{s:16:\"faq_banner_image\";s:16:\"faq-banner_1.png\";s:12:\"faq_sections\";a:3:{i:0;a:2:{s:17:\"faq_section_title\";s:32:\"Search Engine Optimization (SEO)\";s:4:\"faqs\";a:3:{i:0;a:2:{s:9:\"faq_title\";s:66:\"How is your SEO service unique to those offered by other agencies?\";s:15:\"faq_description\";s:1089:\"We pride ourselves for our attention to detail. From the very start our SEO professionals will perform a deep analysis of your business to understand the market you’re competing in and the specific practices your competitors engage in to compete online.\nOur approach to SEO focuses on revealing the facts and letting those facts dictate every aspect of the campaign. We choose the keywords your campaign uses, the structure your website takes, and the channels we focus on for off-page based on the results of this analysis. Our research-oriented approach ensures that results are consistently achieved rather than taking a “one-size fits all” approach.\nYou can expect your SEO campaign to be a long-term investment, often requiring 3-6 months before seeing a return. We are upfront about this, but what sets us apart from the competition are the long-term results we achieve. Instead of getting your name ranked and then subsequently losing it, we work to establish your brand as an authority, encouraging search engines to consistently feature your pages at the top of the results.\";}i:1;a:2:{s:9:\"faq_title\";s:48:\"How does Doodle Digital charge for SEO services?\";s:15:\"faq_description\";s:633:\"Each campaign is different. Two companies of similar size in similar industries are still going to have vastly different approaches to achieve similar results. We strive to personalize each campaign to the unique objectives and challenges our clients face in getting their website ranked in the search results provided by the major search engines. We are upfront about the costs associated with each campaign. We can provide your business with a custom quote with an outline of the costs, the time commitment from Doodle Digital, and when your brand will begin seeing the results of our hard work and dedication to your SEO campaign.\";}i:2;a:2:{s:9:\"faq_title\";s:70:\"How do I know if I am the right fit for Doodle Digital\'s SEO services?\";s:15:\"faq_description\";s:730:\"We are the right fit for businesses which understand that meaningful marketing takes time to achieve. Search engine optimization requires long-term commitment and effort to make it work and to make those results last. Some SEO companies opt to use short-term strategies to get a high placement for a quick fee, but in nearly all of these cases the placements do not last.\nAs major search engines adjust their algorithms to combat link schemes, these strategies do not create lasting results and end up costing more of a headache for clients. We focus on building for the long-term. If you are looking to increase your organic traffic and have a lasting increase for your most competitive keywords, Doodle Digital is right for you.\";}}}i:1;a:2:{s:17:\"faq_section_title\";s:23:\"Social Media Management\";s:4:\"faqs\";a:3:{i:0;a:2:{s:9:\"faq_title\";s:75:\"How is your social media service unique to those offered by other agencies?\";s:15:\"faq_description\";s:597:\"When we take on a social media project for a client, we invest ourselves into their social presence. Each project we take on is an opportunity to put to the test skills our professionals have been developing over years. We take the time to perform research on each brand we represent to understand who they are, what sets them apart from their competition, and who their core audience is. We then identify the best methods of communicating with that audience through social media in order to drive the right type of engagement, leading to the highest possible sales conversions for their campaign.\";}i:1;a:2:{s:9:\"faq_title\";s:57:\"How does Doodle Digital charge for social media services?\";s:15:\"faq_description\";s:438:\"Each project we take on is a unique challenge and therefore requires an initial analysis to determine the right route to take. We provide a free quote for all potential projects to clearly define what it is that Digital Marketing Agency will be doing and at what cost. Since each project is different, we are unable to provide a standardized method for pricing. We’ll outline exactly what the campaign will cost and in what time period.\";}i:2;a:2:{s:9:\"faq_title\";s:79:\"How do I know if I am the right fit for Doodle Digital\'s social media services?\";s:15:\"faq_description\";s:731:\"We work with businesses that are looking to achieve long-term success in social media over short-term campaigns meant to simply increase numbers. For social media to work, it requires dedication from both the brand name being represented and the team working to make social media work. We are dedicated to the long-term success of each social media campaign we tackle, and we want our clients to be as dedicated to taking advantage of those results. If you’re looking for a wholesale social media service or are simply looking to inflate your presence on social media, Digital Marketing Agency might not be the right fit for you. However, if you’re looking to make social media work for you, Doodle Digital is the right choice.\";}}}i:2;a:2:{s:17:\"faq_section_title\";s:24:\"Web Design & Development\";s:4:\"faqs\";a:3:{i:0;a:2:{s:9:\"faq_title\";s:91:\"How are your web design and development services unique to those offered by other agencies?\";s:15:\"faq_description\";s:642:\"Your website is often your potential client’s first impression. We understand the importance of that first impression and guarantee the work that we do. Each website is built from the ground up based on your unique requirements and objectives. Before we take on a project, we want to understand the project in addition to understanding what you want to achieve with that website. Our approach to building the website will be laid out up front with timelines and any requirements from your said at the start of the campaign to make the design and/or development process as seamless as possible. We meet our deadlines and exceed expectations.\";}i:1;a:2:{s:9:\"faq_title\";s:71:\"How does Doodle Digital charge for web design and development services?\";s:15:\"faq_description\";s:214:\"Website design and development are completely customized here at Doodle Digital. A detailed proposal including design, development milestones along with payment terms will be presented prior to any work being done.\";}i:2;a:2:{s:9:\"faq_title\";s:93:\"How do I know if I am the right fit for Doodle Digital\'s web design and development services?\";s:15:\"faq_description\";s:526:\"You’re a great fit if you’re looking to build something for the long-term. We’re not interested in wholesale design and development. Each website is built to your unique requirements and specifications to give you the right website from the very start. If you’re looking for a unique solution to your design and development woes solved professionally, we are the right fit.\nStill got things to know about our services or custom digital marketing packages? Just spend a few seconds and send us a message or make a call.\";}}}}s:13:\"faq_seo_title\";s:70:\"FAQs & Answers | Best Answers From A Reliable Digital Marketing Agency\";s:17:\"faq_meta_keywords\";s:24:\"Digital Marketing Agency\";s:20:\"faq_meta_description\";s:193:\"We know people might have questions to ask as we are a digital marketing agency providing services and information. Read our answers to questions frequently asked by our visitors and customers.\";}', 1, 1, 1, 2, NULL, '2018-10-31 11:21:50');

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
(3, 'slide4', 'Unhappy With The <span> SOCIAL MEDIA</span> Stats?', 'Businesses become brands if they can manage to use Facebook, Instagram, Twitter, Pinterest etc. to their benefits. Our social media techniques are a part of the strategy that wins even under the most unpredictable scenario.', '1_3.jpg', 'a:2:{s:12:\"button_label\";a:2:{i:0;s:10:\"Contact us\";i:1;s:16:\"View Our Package\";}s:11:\"button_link\";a:2:{i:0;s:8:\"/contact\";i:1;s:39:\"/packages/detail/social-media-marketing\";}}', 1, 1, 1, '2018-03-12 22:27:58', '2018-10-31 04:07:47'),
(4, 'slide1', '<span> liven up <small>Wish to</small></span><span> VIDEO </span><span> Marketing? </span>', NULL, '6_4.jpg', 'a:2:{s:12:\"button_label\";a:2:{i:0;s:10:\"Contact us\";i:1;s:16:\"View Our Package\";}s:11:\"button_link\";a:2:{i:0;s:8:\"/contact\";i:1;s:32:\"/packages/detail/video-marketing\";}}', 1, 1, 1, '2018-03-12 22:33:32', '2018-10-31 04:07:35'),
(5, 'slide2', 'Looking For <br/>Killer Content?', 'It is about doing research, gathering knowledge, and doing all the hard work that our zealous writers do every day to be part of the community of experts whose valuable skills and insights set the standard and shape the way people get the most of their time spent on reading the content.', '15_2.jpg', 'a:2:{s:12:\"button_label\";a:2:{i:0;s:10:\"Contact us\";i:1;s:16:\"View Our Package\";}s:11:\"button_link\";a:2:{i:0;s:8:\"/contact\";i:1;s:40:\"/packages/detail/content-writing-service\";}}', 1, 1, 1, '2018-03-12 22:36:49', '2018-10-31 04:07:11'),
(6, 'slide3', 'Need A Reliable Resilient <span>SEO</span>?', 'It is about doing research, gathering knowledge, and doing all the hard work that our zealous writers do every day to be part of the community of experts whose valuable skills and insights set the standard and shape the way people get the most of their time spent on reading the content.', '18_4.jpg', 'a:2:{s:12:\"button_label\";a:2:{i:0;s:10:\"Contact us\";i:1;s:16:\"View Our Package\";}s:11:\"button_link\";a:2:{i:0;s:8:\"/contact\";i:1;s:26:\"/packages/detail/local-seo\";}}', 1, 1, 1, '2018-03-12 22:41:32', '2018-10-31 04:06:56'),
(7, 'slide5', 'Affiliate Site That <span>Earns?</span>', 'We can meet all of today’s demands Lucrative Niche Selection,Smart Keyword Research, Readable & Useful Content, A Beautiful, Responsive & Fast-Loading Web Design & Development, Complete SEO Services.', '17_5.jpg', 'a:2:{s:12:\"button_label\";a:2:{i:0;s:10:\"Contact Us\";i:1;s:16:\"View Our Package\";}s:11:\"button_link\";a:2:{i:0;s:8:\"/contact\";i:1;s:46:\"/packages/detail/amazon-niche-website-building\";}}', 1, 1, 1, '2018-03-12 22:44:13', '2018-10-31 04:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Disabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `firstname`, `lastname`, `ip`, `city`, `state`, `country`, `extra`, `status`, `created_at`, `updated_at`) VALUES
(1, 'engr.mrksohag@gmail.com', NULL, NULL, '127.0.0.1', '', '', '', '{\n    \"ip\": \"127.0.0.1\",\n    \"reserved\": true\n}', 1, '2017-12-09 23:36:24', '2018-01-07 05:55:22'),
(8, 'abrasel600@gmail.com', 'asdf', 'asdfsdf', NULL, 'asdf', 'Fresh Creek', 'Bahamas', 'asdf', 1, '2018-01-06 02:43:24', '2018-01-08 05:11:25'),
(9, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-02-06 09:18:24', '2018-02-06 09:18:24'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-02-12 09:16:12', '2018-02-12 09:16:12'),
(11, 'k.lambert@rangerexpert.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-02-14 11:33:44', '2018-02-14 11:33:44'),
(12, 'mills4177@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-02-26 03:59:49', '2018-02-26 03:59:49'),
(13, 'joysaha544@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-02-27 05:21:16', '2018-02-27 05:21:16'),
(14, 'asdfasd@getwebinc.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-05 03:18:17', '2018-04-05 03:18:17'),
(15, 'cmtraselkhan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-05 03:20:36', '2018-04-05 03:20:36'),
(16, 'abrasel@getwebinc.com', NULL, NULL, '103.205.135.132', 'Dhaka', 'Dhaka Division', 'Bangladesh', NULL, 1, '2018-04-05 03:23:38', '2018-04-05 03:23:38'),
(17, 'admin@gmail.com', NULL, NULL, '127.0.0.1', '', '', '', NULL, 1, '2018-10-31 09:05:37', '2018-10-31 09:05:37');

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
(58, 15, 9, 'App\\Model\\Common\\Blog', '2018-10-31 08:32:08', '2018-10-31 08:32:08'),
(59, 16, 9, 'App\\Model\\Common\\Blog', '2018-10-31 08:32:08', '2018-10-31 08:32:08'),
(60, 17, 9, 'App\\Model\\Common\\Blog', '2018-10-31 08:32:08', '2018-10-31 08:32:08'),
(61, 18, 9, 'App\\Model\\Common\\Blog', '2018-10-31 08:32:08', '2018-10-31 08:32:08'),
(63, 20, 10, 'App\\Model\\Common\\Blog', '2018-10-31 08:31:57', '2018-10-31 08:31:57'),
(64, 21, 10, 'App\\Model\\Common\\Blog', '2018-10-31 08:31:57', '2018-10-31 08:31:57'),
(65, 22, 11, 'App\\Model\\Common\\Blog', '2018-10-31 08:30:04', '2018-10-31 08:30:04'),
(66, 15, 11, 'App\\Model\\Common\\Blog', '2018-10-31 08:30:04', '2018-10-31 08:30:04'),
(68, 24, 12, 'App\\Model\\Common\\Blog', '2018-10-31 08:29:48', '2018-10-31 08:29:48'),
(69, 25, 12, 'App\\Model\\Common\\Blog', '2018-10-31 08:29:48', '2018-10-31 08:29:48'),
(70, 16, 13, 'App\\Model\\Common\\Blog', '2018-10-31 08:29:31', '2018-10-31 08:29:31'),
(71, 26, 13, 'App\\Model\\Common\\Blog', '2018-10-31 08:29:31', '2018-10-31 08:29:31'),
(72, 27, 13, 'App\\Model\\Common\\Blog', '2018-10-31 08:29:31', '2018-10-31 08:29:31'),
(73, 28, 14, 'App\\Model\\Common\\Blog', '2018-10-31 08:29:14', '2018-10-31 08:29:14'),
(74, 29, 14, 'App\\Model\\Common\\Blog', '2018-10-31 08:29:14', '2018-10-31 08:29:14'),
(82, 37, 9, 'App\\Model\\Common\\Blog', '2018-10-31 08:32:08', '2018-10-31 08:32:08');

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
(37, 'Google+', NULL, NULL, 'google', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-03-20 22:59:29', '2018-03-20 22:59:29');

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
(4, 'gp_791117384409497', 'abrasel600', 'abrasel600@gmail.com', 'Abdur', 'Rasel', NULL, NULL, '1755167600', '$2y$10$BXX4POGJS8W0EO1FfGjTwuTV8JW63avZCzmuzeO22voDD0zXdLlui', 'images.png', 0.00, 'Mirpur', 'Dhaka', '1209', 'Bangladesh', 'Dhaka', NULL, 1, '2018-01-03 03:18:12', '2018-03-18 22:33:29');

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
(140, 2, 'user_online_status', '1', '2018-03-19 02:39:26', '2018-03-19 02:39:26');

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
(59, '2018-10-31', 1);

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
  ADD KEY `likes_liker_id_index` (`liker_id`),
  ADD KEY `likes_liker_ip_index` (`liker_ip`),
  ADD KEY `likes_likeable_id_index` (`likeable_id`),
  ADD KEY `likes_likeable_type_index` (`likeable_type`),
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
  ADD KEY `subscribers_firstname_index` (`firstname`),
  ADD KEY `subscribers_lastname_index` (`lastname`),
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
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categoryables`
--
ALTER TABLE `categoryables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- AUTO_INCREMENT for table `media_permissions`
--
ALTER TABLE `media_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `package_details`
--
ALTER TABLE `package_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_metas`
--
ALTER TABLE `users_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
