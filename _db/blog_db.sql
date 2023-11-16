
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `admin` (`id`, `first_name`, `last_name`, `username`, `password`) VALUES
(1, 'Elias', 'A', 'admin', '$2y$10$kggeKkIs6rEWf.p/6muJCOepa8zY4DcDU3CBZua8iNc9SBM3MMGym');



CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Science'),
(2, 'Technology'),
(4, 'Biology'),
(5, 'Poems'),
(6, 'Fiction'),
(7, 'Fantasy'),
(8, 'Programming'),
(9, 'Artificial intelligence');



CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `crated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `comment` (`comment_id`, `comment`, `user_id`, `post_id`, `crated_at`) VALUES
(21, 'good', 4, 14, '2023-07-21 19:04:30'),
(22, 'thanks', 4, 12, '2023-07-21 19:04:46'),
(23, 'new comment', 2, 14, '2023-07-21 19:05:16'),
(24, 'Nice', 2, 14, '2023-07-21 19:05:20'),
(25, 'thanks', 2, 12, '2023-07-21 19:05:56'),
(26, 'thanks', 2, 15, '2023-07-21 19:11:38');



CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(127) NOT NULL,
  `post_text` text NOT NULL,
  `category` int(11) NOT NULL,
  `publish` int(2) NOT NULL DEFAULT 1,
  `cover_url` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `crated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `post` (`post_id`, `post_title`, `post_text`, `category`, `publish`, `cover_url`, `crated_at`) VALUES
(10, 'Future of Technology', '<div><span style=\"color: rgb(48, 48, 48); font-family: Lato, sans-serif; font-size: 18px;\">The digital revolution has already changed how people live, work, and communicate. And it’s only just getting started. But the same technologies that have the potential to help billions of people live happier, healthier, and more productive lives are also creating new challenges for citizens and governments around the world. From election meddling to data breaches and cyberattacks, recent events have shown that technology is changing how we think about privacy, national security, and maybe even democracy itself. In this project, we examine challenges in five key areas that will shape the future of the digital age: justice system, impact on democracy, global security and international conflict, the impact of automations and AI on the jobs marketplace, identity, and privacy.&nbsp;</span><span style=\"font-weight: 600; color: rgb(48, 48, 48); font-family: Lato, sans-serif; font-size: 18px;\">Explore provocative and through-provoking topics on how technology impacts our lives</span><br></div><div><br><br><div class=\"videoEmbed\" style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube-nocookie.com/embed/8YmLJ6lSzMk?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" webkitallowfullscreen=\"\" mozallowfullscreen=\"\" allowfullscreen=\"\"></iframe></div><br><br><br></div><div><span style=\"font-weight: 600; color: rgb(48, 48, 48); font-family: Lato, sans-serif; font-size: 18px;\"><br><br></span></div>', 9, 1, 'COVER-64ba9e879b0c83.79174008.jpg', '2023-07-21 18:04:39'),
(11, 'What is AI', '<div id=\"8a15280b-8a40-4fea-ab8a-9bae5f36da40\" class=\"c-shortcodeListicle g-outer-spacing-bottom-medium\" style=\"outline: 0px; margin-bottom: 1.5rem; --grid-cols: 6; clear: both; color: rgb(8, 10, 18); font-family: suisseintl, helvetica, sans-serif;\"><div class=\"c-shortcodeListicle_header g-outer-spacing-bottom-small sm:u-col-2 md:u-col-6 lg:u-col-6\" style=\"outline: 0px; margin-bottom: 1rem; grid-column-end: span 6; display: flex; justify-content: space-between; flex-direction: column; align-items: baseline;\"><div class=\"c-shortcodeListicle_headerText\" style=\"outline: 0px; flex: 1 1 0%;\"><div style=\"outline: 0px;\"><h2 id=\"toc-link-0-bd57f177-858a-4a4d-936f-816161e778b0\" style=\"outline: 0px; font-size: 2.25rem; line-height: 2.75rem; scroll-margin-top: 100px;\">What is artificial intelligence?</h2></div></div></div><div class=\"c-shortcodeListicle_conten\" style=\"outline: 0px;\"><div style=\"outline: 0px;\"><div class=\"c-ShortcodeContent\" style=\"outline: 0px;\"><div>Hear the term artificial intelligence (AI) and you might think of&nbsp;<a href=\"https://www.zdnet.com/article/elon-musk-says-that-the-self-driving-tesla-could-be-ready-by-the-end-of-the-year/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">self-driving cars</a>,&nbsp;<a href=\"https://www.zdnet.com/article/boston-dynamics-just-dropped-a-new-video-look-what-its-humanoid-robot-can-do-now/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">robots</a>,&nbsp;<a href=\"https://www.zdnet.com/article/what-is-chatgpt-and-why-does-it-matter-heres-everything-you-need-to-know/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">ChatGPT</a>&nbsp;or&nbsp;<a href=\"https://www.zdnet.com/article/best-ai-chatbot/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">other AI chatbots</a>, and&nbsp;<a href=\"https://www.zdnet.com/article/best-ai-art-generator/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">artificially created images</a>. But it\'s also important to look behind the outputs of AI and understand how the technology works and its impacts for this and future generations.</div><div>AI is a concept that has been around, formally,&nbsp;<a href=\"https://hai.stanford.edu/sites/default/files/2020-09/AI-Definitions-HAI.pdf\" target=\"_blank\" class=\"c-regularLink\" style=\"outline: 0px; color: rgb(8, 10, 18);\">since the 1950s</a>, when it was defined as a machine\'s ability to perform a task that would\'ve previously required human intelligence. This is quite a broad definition and one that has been modified over decades of research and technological advancements.</div><div>When you consider assigning intelligence to a machine, such as a computer, it makes sense to start by defining the term \'intelligence\' -- especially when you want to determine if an artificial system is truly deserving of it.&nbsp;</div><div><strong style=\"outline: 0px; font-weight: bold;\">Also:&nbsp;</strong><a href=\"https://www.zdnet.com/in-depth/innovation/these-experts-are-racing-to-protect-ai-from-hackers-time-is-running-out/#link=%7B%22linkText%22:%22%3Cstrong%3EThese%20experts%20are%20racing%20to%20protect%20AI%20from%20hackers.%20Time%20is%20running%20out%20%3C/strong%3E%22,%22target%22:%22_blank%22,%22href%22:%22https://www.zdnet.com/in-depth/innovation/these-experts-are-racing-to-protect-ai-from-hackers-time-is-running-out/%22,%22role%22:%22standard%22,%22absolute%22:%22%22%7D\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\"><strong style=\"outline: 0px; font-weight: bold;\">These experts are racing to protect AI from hackers</strong></a></div><div>Our level of intelligence sets us apart from other living beings and is essential to the human experience. Some experts define intelligence as the ability to adapt, solve problems, plan, improvise in new situations, and learn new things.&nbsp;</div><div>With intelligence sometimes seen as the foundation for human experience, it\'s perhaps no surprise that we\'d try and recreate it artificially in scientific endeavors.&nbsp;</div><div>And today\'s AI systems might demonstrate some traits of human intelligence, including learning, problem-solving, perception, and even a limited spectrum of creativity and social intelligence.</div></div></div></div></div><div class=\"g-outer-spacing-bottom-large\" style=\"outline: 0px; margin-bottom: 2rem; color: rgb(8, 10, 18); font-family: suisseintl, helvetica, sans-serif;\"></div><div id=\"39f85b3c-4daa-42ed-9743-d2575ff3f8a5\" class=\"c-shortcodeListicle g-outer-spacing-bottom-medium\" style=\"outline: 0px; margin-bottom: 1.5rem; --grid-cols: 6; clear: both; color: rgb(8, 10, 18); font-family: suisseintl, helvetica, sans-serif;\"><div class=\"c-shortcodeListicle_header g-outer-spacing-bottom-small sm:u-col-2 md:u-col-6 lg:u-col-6\" style=\"outline: 0px; margin-bottom: 1rem; grid-column-end: span 6; display: flex; justify-content: space-between; flex-direction: column; align-items: baseline;\"><div class=\"c-shortcodeListicle_headerText\" style=\"outline: 0px; flex: 1 1 0%;\"><div style=\"outline: 0px;\"><h2 id=\"toc-link-1-bd57f177-858a-4a4d-936f-816161e778b0\" style=\"outline: 0px; font-size: 2.25rem; line-height: 2.75rem; scroll-margin-top: 100px;\">How can I use AI?</h2></div></div></div><div class=\"c-shortcodeListicle_conten\" style=\"outline: 0px;\"><div style=\"outline: 0px;\"><div class=\"c-ShortcodeContent\" style=\"outline: 0px;\"><div>AI comes in different forms that have become widely available in everyday life. The smart speakers on your mantle with Alexa or Google voice assistant built-in are two great examples of AI. Other good examples are popular AI chatbots, such as&nbsp;<a href=\"https://www.zdnet.com/article/how-to-use-chatgpt/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">ChatGPT</a>,&nbsp;<a href=\"https://www.zdnet.com/article/how-to-use-the-new-bing-and-how-its-different-from-chatgpt/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">the new Bing Chat</a>, and&nbsp;<a href=\"https://www.zdnet.com/article/what-is-google-bard-heres-everything-you-need-to-know/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">Google Bard</a>.&nbsp;</div><div>When you ask ChatGPT for the capital of a country or you ask Alexa to give you an update on the weather, you\'ll get responses that are the result of machine-learning algorithms.</div><div><strong style=\"outline: 0px; font-weight: bold;\">Also:&nbsp;</strong><a href=\"https://www.zdnet.com/article/how-does-chatgpt-work/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\"><strong style=\"outline: 0px; font-weight: bold;\">How does ChatGPT work?</strong></a></div><div>Though these systems aren\'t a replacement for human intelligence or social interaction, they have the ability to use their training to adapt and learn new skills for tasks that they weren\'t explicitly programmed to perform.&nbsp;</div><div><br></div><div><div id=\"e42bfd2d-7e0e-4907-a614-acd6ba42eaa1\" class=\"c-shortcodeListicle g-outer-spacing-bottom-medium\" style=\"outline: 0px; margin-bottom: 1.5rem; --grid-cols: 6; clear: both; font-family: suisseintl, helvetica, sans-serif;\"><div class=\"c-shortcodeListicle_header g-outer-spacing-bottom-small sm:u-col-2 md:u-col-6 lg:u-col-6\" style=\"outline: 0px; margin-bottom: 1rem; grid-column-end: span 6; display: flex; justify-content: space-between; flex-direction: column; align-items: baseline;\"><div class=\"c-shortcodeListicle_headerText\" style=\"outline: 0px; flex: 1 1 0%;\"><div style=\"outline: 0px;\"><h2 id=\"toc-link-2-bd57f177-858a-4a4d-936f-816161e778b0\" style=\"outline: 0px; font-size: 2.25rem; line-height: 2.75rem; scroll-margin-top: 100px;\">What are the different types of AI?</h2></div></div></div><div class=\"c-shortcodeListicle_conten\" style=\"outline: 0px;\"><div style=\"outline: 0px;\"><div class=\"c-ShortcodeContent\" style=\"outline: 0px;\"><div>Artificial intelligence can be divided into three widely accepted subcategories: narrow AI, general AI, and super AI.</div></div></div></div></div><div id=\"4ab67da3-3d6b-4de8-864d-eb8a0b47c3b9\" class=\"c-shortcodeListicle g-outer-spacing-bottom-medium\" style=\"outline: 0px; margin-bottom: 1.5rem; --grid-cols: 6; clear: both; font-family: suisseintl, helvetica, sans-serif;\"><div class=\"c-shortcodeListicle_header g-outer-spacing-bottom-small sm:u-col-2 md:u-col-6 lg:u-col-6\" style=\"outline: 0px; margin-bottom: 1rem; grid-column-end: span 6; display: flex; justify-content: space-between; flex-direction: column; align-items: baseline;\"><div class=\"c-shortcodeListicle_headerText\" style=\"outline: 0px; flex: 1 1 0%;\"><div style=\"outline: 0px;\"><h2 id=\"toc-link-3-bd57f177-858a-4a4d-936f-816161e778b0\" style=\"outline: 0px; font-size: 2.25rem; line-height: 2.75rem; scroll-margin-top: 100px;\"><br></h2><div><br></div></div></div></div></div></div></div></div></div></div>', 9, 1, 'COVER-64baa69b661be3.43596849.jpg', '2023-07-21 18:11:07'),
(12, 'What is general AI?', '<div><div>Artificial general intelligence (AGI), also known as strong AI, is still a hypothetical concept as it involves a machine understanding and performing vastly different tasks based on its accumulated experience. This type of intelligence is more on the level of human intellect, as AGI systems would be able to reason and think like a human.</div><div><strong style=\"outline: 0px; font-weight: bold;\">Also:&nbsp;</strong><a href=\"https://www.zdnet.com/article/ai-true-goal-may-no-longer-be-intelligence/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\"><strong style=\"outline: 0px; font-weight: bold;\">AI\'s true goal may no longer be intelligence</strong></a></div><div>Like a human, AGI would potentially be able to understand any intellectual task, think abstractly, learn from its experiences, and use that knowledge to solve new problems. Essentially, we\'re talking about a system or machine capable of common sense, which is currently not achievable with any form of available AI.</div><div>Developing a system with its own consciousness is still, presumably, a fair way in the distance, but it is the ultimate goal in AI research.</div></div><div><br></div><div><div class=\"c-shortcodeListicle_header g-outer-spacing-bottom-small sm:u-col-2 md:u-col-6 lg:u-col-6\" style=\"outline: 0px; margin-bottom: 1rem; grid-column-end: span 6; display: flex; justify-content: space-between; flex-direction: column; align-items: baseline; color: rgb(8, 10, 18); font-family: suisseintl, helvetica, sans-serif;\"><div class=\"c-shortcodeListicle_headerText\" style=\"outline: 0px; flex: 1 1 0%;\"><div style=\"outline: 0px;\"><h2 id=\"toc-link-6-bd57f177-858a-4a4d-936f-816161e778b0\" style=\"outline: 0px; font-size: 2.25rem; line-height: 2.75rem; scroll-margin-top: 100px;\">What are some recent examples of AI?</h2></div></div></div><div class=\"c-shortcodeListicle_conten\" style=\"outline: 0px; color: rgb(8, 10, 18); font-family: suisseintl, helvetica, sans-serif;\"><div style=\"outline: 0px;\"><div class=\"c-ShortcodeContent\" style=\"outline: 0px;\"><div>Overall, the most notable advancements in AI are the development and release of GPT 3.5 and GPT 4. But there have been many other revolutionary achievements in artificial intelligence -- too many, in fact, to include all of them here.</div><div>Here are some of the most notable:</div><h3 style=\"outline: 0px; margin-bottom: 1rem; font-size: 1.375rem; line-height: 1.75rem;\"><strong style=\"outline: 0px; font-weight: bold;\">ChatGPT (and the GPTs)</strong></h3><div>ChatGPT is an AI chatbot capable of natural language generation, translation, and answering questions. Though it\'s arguably the most popular AI tool, thanks to its widespread accessibility, OpenAI made significant waves in the world of artificial intelligence with the creation of GPTs 1, 2, and 3.&nbsp;</div><div><strong style=\"outline: 0px; font-weight: bold;\">Also:&nbsp;</strong><a href=\"https://www.zdnet.com/article/chatgpt-productivity-hacks-five-ways-to-use-chatbots-to-make-your-life-easier/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\"><strong style=\"outline: 0px; font-weight: bold;\">5 ways to use chatbots to make your life easier</strong></a></div><div>GPT stands for Generative Pre-trained Transformer, and GPT-3 was the largest language model in existence at the time of its 2020 launch, with 175 billion parameters. The latest version, GPT-4, accessible through ChatGPT Plus or Bing Chat, has one trillion parameters.&nbsp;</div><h3 style=\"outline: 0px; margin-bottom: 1rem; font-size: 1.375rem; line-height: 1.75rem;\"><strong style=\"outline: 0px; font-weight: bold;\">Self-driving cars</strong></h3><div>Though the safety of self-driving cars is&nbsp;<a href=\"https://www.zdnet.com/article/tesla-to-recall-more-than-360000-vehicles-due-to-self-driving-software-problems/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">a top concern of potential users</a>, the technology continues to advance and improve with breakthroughs in AI. These vehicles use machine-learning algorithms to combine data from sensors and cameras to perceive their surroundings and determine the best course of action.&nbsp;</div><div><strong style=\"outline: 0px; font-weight: bold;\">Also:&nbsp;<a href=\"https://www.zdnet.com/article/an-autonomous-car-that-wakes-up-and-greets-you-could-be-in-your-future/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">An autonomous car that wakes up and greets you could be in your future</a></strong></div><div>Tesla\'s autopilot feature in its electric vehicles is probably what most people think of when considering self-driving cars, but Waymo, from Google\'s parent company, Alphabet, makes autonomous rides, like a taxi without a taxi driver, in San Francisco, CA, and Phoenix, AZ.</div><div>Cruise is another robotaxi service, and auto companies like Apple, Audi, GM, and Ford are also presumably working on self-driving vehicle technology.&nbsp;</div><div><br><br><div class=\"videoEmbed\" style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube-nocookie.com/embed/ze2N7seOKbk?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" webkitallowfullscreen=\"\" mozallowfullscreen=\"\" allowfullscreen=\"\"></iframe></div><br><br><br></div><h3 style=\"outline: 0px; margin-bottom: 1rem; font-size: 1.375rem; line-height: 1.75rem;\"><strong style=\"outline: 0px; font-weight: bold;\">Robotics</strong></h3><div>The achievements of Boston Dynamics stand out in the area of AI and robotics. Though we\'re still a long way away from creating AI at the level of technology seen in the moive Terminator, watching Boston Dyanmics\' robots use AI to navigate and respond to different terrains is impressive.&nbsp;</div><h3 style=\"outline: 0px; margin-bottom: 1rem; font-size: 1.375rem; line-height: 1.75rem;\"><strong style=\"outline: 0px; font-weight: bold;\">DeepMind</strong></h3><div>Google sister company&nbsp;<a href=\"https://www.zdnet.com/article/deepmind-why-is-ai-so-good-at-language-its-something-in-language-itself/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">DeepMind</a>&nbsp;is an AI pioneer making strides toward the ultimate goal of artificial general intelligence (AGI). Though not there yet, the company initially&nbsp;<a href=\"https://www.zdnet.com/article/alphago-defeats-go-world-champion-in-china/\" rel=\"follow\" style=\"outline: 0px; color: rgb(8, 10, 18);\">made headlines in 2016</a>&nbsp;with AlphaGo, a system that beat a human professional Go player.&nbsp;</div><div>Since then, DeepMind has created a protein-folding prediction system, which can predict the complex 3D shapes of proteins, and it\'s developed programs that can diagnose eye diseases as effectively as the top doctors around the world.</div></div></div></div></div>', 9, 1, 'COVER-64baa114e66609.40375739.jpg', '2023-07-21 18:13:58'),
(13, 'What is programming?', '<div><h2 id=\"0-what-is-programming\" style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 30px; line-height: var(--cds-line-height-title1-lg); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">What is programming?</h2><div>Programming refers to a technological process for telling a computer which tasks to perform in order to solve problems. You can think of programming as a collaboration between humans and computers, in which humans create instructions for a computer to follow (code) in a language computers can understand.&nbsp;</div><div></div><div>Programming enables so many things in our lives. Here are some examples:&nbsp;</div><div></div><ul style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>When you browse a website to find information, contact a service provider, or make a purchase, programming allows you to interact with the site’s on-page elements, such as sign-up or purchase buttons, contact forms, and drop-down menus.</div></li></ul><div></div><ul style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>The programming behind a mobile app can make it possible for you to order food, book a rideshare service, track your fitness, access media, and more with ease.&nbsp;</div></li></ul><div></div><ul style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>Programming helps businesses operate more efficiently through different software for file storage and automation and video conferencing tools to connect people globally, among other things.&nbsp;</div></li></ul><div></div><ul style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>Space exploration is made possible through programming.&nbsp;&nbsp;</div></li></ul><div></div><h2 id=\"1-how-does-computer-programming-work\" style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 30px; line-height: var(--cds-line-height-title1-lg); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">How does computer programming work?</h2><div>At its most basic, programming tells a computer what to do. First, a programmer writes code—a set of letters, numbers, and other characters. Next, a compiler converts each line of code into a language a computer can understand. Then, the computer scans the code and executes it, thereby performing a task or series of tasks. Tasks might include displaying an image on a webpage or changing the font of a section of text.&nbsp;</div><h2 id=\"2-most-used-programming-languages\" style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 30px; line-height: var(--cds-line-height-title1-lg); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">Most used programming languages</h2><div>Different programming languages enable programmers to write code that computers understand. According to a survey by Statista, the top five programming languages that developers use are:&nbsp;</div><div></div><ul style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div><span style=\"-webkit-font-smoothing: antialiased; font-weight: var(--cds-font-weight-600); font-family: var(--cds-font-family-source-sans-pro); letter-spacing: var(--cds-letter-spacing-125); font-size: inherit; line-height: inherit;\">JavaScript</span>, used by 65.36%&nbsp;</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div><span style=\"-webkit-font-smoothing: antialiased; font-weight: var(--cds-font-weight-600); font-family: var(--cds-font-family-source-sans-pro); letter-spacing: var(--cds-letter-spacing-125); font-size: inherit; line-height: inherit;\">HTML/CSS</span>, used by 55.08%</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div><span style=\"-webkit-font-smoothing: antialiased; font-weight: var(--cds-font-weight-600); font-family: var(--cds-font-family-source-sans-pro); letter-spacing: var(--cds-letter-spacing-125); font-size: inherit; line-height: inherit;\">SQL</span>, used by 49.43%&nbsp;</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div><span style=\"-webkit-font-smoothing: antialiased; font-weight: var(--cds-font-weight-600); font-family: var(--cds-font-family-source-sans-pro); letter-spacing: var(--cds-letter-spacing-125); font-size: inherit; line-height: inherit;\">Python</span>, used by 48.07%&nbsp;</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div><span style=\"-webkit-font-smoothing: antialiased; font-weight: var(--cds-font-weight-600); font-family: var(--cds-font-family-source-sans-pro); letter-spacing: var(--cds-letter-spacing-125); font-size: inherit; line-height: inherit;\">TypeScript</span>, used by 34.83% [<a href=\"https://www.statista.com/statistics/793628/worldwide-developer-survey-most-used-languages/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"-webkit-font-smoothing: antialiased; background: transparent; touch-action: manipulation;\">1</a>]</div></li></ul><div></div><div>Explore below what you can do with these programming languages:&nbsp;</div><h3 style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 24px; line-height: var(--cds-line-height-title2); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">JavaScript</h3><div>This language is used on every major web browser.&nbsp;<a href=\"https://www.coursera.org/articles/java-vs-javascript\" target=\"_self\" rel=\"\" style=\"-webkit-font-smoothing: antialiased; background: transparent; touch-action: manipulation;\">JavaScript</a>&nbsp;allows you to add complex features to a web page, such as content updates, interactive maps, and animated graphics, develop games, and more.&nbsp;&nbsp;&nbsp;</div><div><span style=\"-webkit-font-smoothing: antialiased; font-weight: var(--cds-font-weight-600); font-family: var(--cds-font-family-source-sans-pro); letter-spacing: var(--cds-letter-spacing-125); font-size: inherit; line-height: inherit;\">Read more:&nbsp;</span><a href=\"https://www.coursera.org/articles/java-vs-javascript\" target=\"_self\" rel=\"\" style=\"-webkit-font-smoothing: antialiased; background: transparent; touch-action: manipulation;\">Java vs. JavaScript: What\'s the Difference?</a></div><h3 style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 24px; line-height: var(--cds-line-height-title2); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">HTML/CSS</h3><div>These languages are used to create web pages and web applications. You would use HTML (HyperText Markup Language) to build web page structure, while CSS (Cascading Style Sheets) would enable you to determine the page’s styling.&nbsp;&nbsp;&nbsp;</div><div><span style=\"-webkit-font-smoothing: antialiased; font-weight: var(--cds-font-weight-600); font-family: var(--cds-font-family-source-sans-pro); letter-spacing: var(--cds-letter-spacing-125); font-size: inherit; line-height: inherit;\">Read more:&nbsp;</span><a href=\"https://www.coursera.org/articles/easiest-programming-language-to-learn?trk_ref=search-bar-autorecs\" target=\"_self\" rel=\"\" style=\"-webkit-font-smoothing: antialiased; background: transparent; touch-action: manipulation;\">Easiest Programming Languages to Learn for Front-End Development</a></div><h3 style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 24px; line-height: var(--cds-line-height-title2); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">SQL</h3><div>SQL stands for Structured Query Language and is used to communicate with databases, including updating and retrieving data.</div><div><span style=\"-webkit-font-smoothing: antialiased; font-weight: var(--cds-font-weight-600); font-family: var(--cds-font-family-source-sans-pro); letter-spacing: var(--cds-letter-spacing-125); font-size: inherit; line-height: inherit;\"></span></div><div><span style=\"-webkit-font-smoothing: antialiased; font-weight: var(--cds-font-weight-600); font-family: var(--cds-font-family-source-sans-pro); letter-spacing: var(--cds-letter-spacing-125); font-size: inherit; line-height: inherit;\">Read more:&nbsp;</span><a href=\"https://www.coursera.org/articles/sql-developer\" target=\"_self\" rel=\"\" style=\"-webkit-font-smoothing: antialiased; background: transparent; touch-action: manipulation;\">What Does an SQL Developer Do? Role, Salary, and Skills</a></div><h3 style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 24px; line-height: var(--cds-line-height-title2); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">Python</h3><div><a href=\"https://www.coursera.org/articles/what-is-python-used-for-a-beginners-guide-to-using-python\" target=\"_self\" rel=\"\" style=\"-webkit-font-smoothing: antialiased; background: transparent; touch-action: manipulation;\">Python</a>&nbsp;programming is most used in machine learning, web development, and desktop applications. Python is a popular language among beginners, as the syntax is relatively easy to learn. It is known as an object-oriented programming language.</div></div><div><span style=\"color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 24px; font-weight: var(--cds-font-weight-600); letter-spacing: -0.1px; text-align: var(--bs-body-text-align);\"><br></span></div><div><span style=\"color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 24px; font-weight: var(--cds-font-weight-600); letter-spacing: -0.1px; text-align: var(--bs-body-text-align);\">TypeScript</span><br></div><div><div>TypeScript is a free, open-source programming language developed by Microsoft as a superset of JavaScript. It’s used for developing large applications.&nbsp;</div></div>', 8, 1, 'COVER-64baa557c0aba9.11287748.png', '2023-07-21 18:33:43'),
(14, 'Types of programming languages', '<div><div>While hundreds of programming languages (if not thousands) exist, and there are many ways to classify them, they typically can be grouped into five main categories:</div><div></div><ol style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>Procedural programming languages</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div>Functional programming languages</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div>Object-oriented programming languages</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div>Scripting languages</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div>Logic programming languages</div></li></ol><div>You can learn more about the different types of programming languages in the article&nbsp;<a href=\"https://www.coursera.org/articles/types-programming-language\" target=\"_self\" rel=\"\" style=\"-webkit-font-smoothing: antialiased; background: transparent; touch-action: manipulation;\">5 Types of Programming Language</a>.</div><div></div><h2 id=\"4-how-to-get-started-in-computer-programming\" style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 30px; line-height: var(--cds-line-height-title1-lg); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">How to get started in computer programming&nbsp;</h2><div>Follow these steps to embark on a journey in the growing field of programming.&nbsp;</div><h3 style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 24px; line-height: var(--cds-line-height-title2); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">1. Identify your programming goals.&nbsp;</h3><div>An important first step is to reflect on your goals and motivations. With clarity on what you want to achieve and why, you can align your actions with the outcomes you desire. Here are some examples of programming goals:&nbsp;&nbsp;</div><div></div><ul style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>Launch a new programming career in a specific industry.&nbsp;</div></li></ul><div></div><ul style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>Explore programming in your current role and take on new projects that combine programming with what you already do.</div></li></ul><div></div><ul style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>Pursue programming as a hobby and complete projects that match your interests.&nbsp;&nbsp;</div></li></ul><div></div><h3 style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 24px; line-height: var(--cds-line-height-title2); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">2. Enroll in an introductory programming course.</h3><div>Once you know your goals, it’s a good idea to find a course on programming to introduce you to popular programming languages and different avenues for applying programming skills. You can also use an introductory course to refine your goals and focus your efforts.&nbsp;</div><div></div><div>Watch this video to practice coding in an&nbsp;<a href=\"https://www.coursera.org/articles/easiest-programming-language-to-learn\" target=\"_self\" rel=\"\" style=\"-webkit-font-smoothing: antialiased; background: transparent; touch-action: manipulation;\">easy-to-learn programming language</a>, Scratch.&nbsp;&nbsp;</div></div><div><br></div>', 8, 1, 'COVER-64baa5c24d8949.62444141.jpg', '2023-07-21 18:35:30');
INSERT INTO `post` (`post_id`, `post_title`, `post_text`, `category`, `publish`, `cover_url`, `crated_at`) VALUES
(15, 'Major Types of Programming ', '<div><article style=\"font-family: Roboto, sans-serif; color: rgb(81, 86, 94);\"><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; font-family: Roboto, sans-serif !important; font-size: 24px !important; line-height: 34px !important; color: rgb(39, 44, 55) !important;\">Major Types of Programming Languages&nbsp;</h2><h3 style=\"margin-top: 32px; margin-bottom: 24px; font-family: Roboto, sans-serif !important; color: rgb(39, 44, 55) !important; font-size: 18px !important; line-height: 26px !important;\">Procedural Programming Languages&nbsp;</h3><div>A programming paradigm that uses procedures or functions to abbreviate and categorize the code into reusable blocks is a procedural programming language. C, Pascal and FORTRAN are the most in-demand programming languages supporting this paradigm.&nbsp;</div><div>In this programming, the program is divided into functions or procedures. They are primarily insular sub-programs that perform a specific task. These procedures can be called from other program parts, allowing for flexible programming and code reuse. The priority is the systematic execution of a program. Further, it emphasizes the series of instructions and influences data stored in variables.</div><div>These are the best programming languages to learn as they are widely used in the fields like engineering, gaming and finance. Procedural programming can be less flexible though this does not stop it from being one of the most significant programming paradigms taught in high-ranking computer science courses.&nbsp;&nbsp;</div><h3 style=\"margin-top: 32px; margin-bottom: 24px; font-family: Roboto, sans-serif !important; color: rgb(39, 44, 55) !important; font-size: 18px !important; line-height: 26px !important;\">Functional Programming Languages&nbsp;</h3><div>Unlike procedural languages, functional programming languages are more flexible. It is composed of a series of functions. This programming paradigm stresses the use of model computations and data transformation. Haskell, Clojure, Lisp and Scala are the languages supporting this paradigm.&nbsp;</div><div>Functional programming makes programs easier to reason with and increases their reliability. The functions solely operate on their input arguments. They are less popular, but they have experienced a colossal boom from the educational point of view. They are assigned to variables, passed as arguments to other functions and return results from other functions.&nbsp;</div><div>Functional programming is efficient parallel programming. They have no mutable state. You can program functions and parallelly work as instructions. These codes support nested functions and consist of independent units that run coherently. Hence, this is more efficient.</div><h3 style=\"margin-top: 32px; margin-bottom: 24px; font-family: Roboto, sans-serif !important; color: rgb(39, 44, 55) !important; font-size: 18px !important; line-height: 26px !important;\">Object-oriented Programming Languages&nbsp;</h3><div>In an object-oriented programming language, objects define the data and the behavior of objects. These objects typically include data attributes representing the object\'s state and method. This language enables users to make a complex system with interconnected objects.</div><div>This language hides implementation components from the outside world through encapsulation. This makes it possible to build large intricate systems without stressing about the internal workings of respective objects. The other benefit that makes this language so in demand is the feature of inheritance. It creates a ranking of classes that share common features while still allowing customization.&nbsp;</div><div>Some popular object-oriented programming languages are Java, Python, C++, and Ruby. All these languages are top programming languages, but they share the principle of being object-oriented.&nbsp;</div><h3 style=\"margin-top: 32px; margin-bottom: 24px; font-family: Roboto, sans-serif !important; color: rgb(39, 44, 55) !important; font-size: 18px !important; line-height: 26px !important;\">Scripting Languages&nbsp;</h3><div>Simple to learn with easy syntax and dynamic typing, the scripting language is the type of language that is interpreted rather than compiled. The two types of this language are server-side scripting languages and client-side scripting languages. These languages make communication possible with other programming languages.</div><ul style=\"margin-top: 0px; margin-bottom: 1rem; padding-left: 0px; list-style-position: initial; list-style-image: initial; margin-left: 20px; font-family: Roboto, sans-serif !important;\"><li aria-level=\"1\" style=\"margin-bottom: 14px; font-family: Roboto, sans-serif !important; line-height: 24px !important;\"><span style=\"font-family: Roboto, sans-serif !important; line-height: 24px !important;\">Python -&nbsp;</span>The easiest programming language used among developers is Python. It is an object-oriented programming language. The language has a high-Level data structure, and built-in libraries, that make it easy to use and suitable for rapid application development. It is easy, decoded and has a dynamic semantic language.&nbsp;</li><li aria-level=\"1\" style=\"margin-bottom: 14px; font-family: Roboto, sans-serif !important; line-height: 24px !important;\"><span style=\"font-family: Roboto, sans-serif !important; line-height: 24px !important;\">Perl -&nbsp;</span>The language is dynamic with innovative features that make it popular and different from what is available on Linux and Windows Server. Websites with high traffic usually use Perl, including IMDB, as it helps in text manipulation tasks.&nbsp;</li><li aria-level=\"1\" style=\"margin-bottom: 14px; font-family: Roboto, sans-serif !important; line-height: 24px !important;\"><span style=\"font-family: Roboto, sans-serif !important; line-height: 24px !important;\">Bash -&nbsp;</span>Bourne -Again, SHell is a scripting language that is the default command interpreter on most Linux/GNU operating systems. This language is easier than most of the other programming languages. Bash makes it easier to create script store documentation for others and provides useful reusable scripts.&nbsp;</li></ul><div><br style=\"font-family: Roboto, sans-serif !important;\"><br style=\"font-family: Roboto, sans-serif !important;\"><br style=\"font-family: Roboto, sans-serif !important;\"></div><h3 style=\"margin-top: 32px; margin-bottom: 24px; font-family: Roboto, sans-serif !important; color: rgb(39, 44, 55) !important; font-size: 18px !important; line-height: 26px !important;\">Logic Programming Languages</h3><div>As the name suggests, this is computer programming based on formal logic. This programming language program consists of a cluster of logical statements or rules that determine relationships among objects. It allows the system to extrapolate new information.&nbsp;</div><div>Artificial intelligence and expert systems commonly use this language where reasoning and conjecture are required. This language allows a concise and expressive program which is easier to reason about and maintain than programs that return to other paradigms.&nbsp;</div><div>To summarize, logical programming is a secure and flexible approach to solving problems in computer programming. It is suitable for every type of problem. It is a valuable tool for a few applications as well. One of the most popular logical languages is Prolog which consists of a set of facts and rules to describe a problem and reason about it.&nbsp;</div><h3 style=\"margin-top: 32px; margin-bottom: 24px; font-family: Roboto, sans-serif !important; color: rgb(39, 44, 55) !important; font-size: 18px !important; line-height: 26px !important;\">Imperative Programming&nbsp;</h3><div>In imperative programming, the programmer provides a set of instructions that the computer follows to manipulate the state of the program and the information structure within it. This paradigm describes the steps that a computer needs to take to solve a program rather than defining the mathematical function. C, C++, Java, and Python are some of the imperative programming languages,&nbsp;</div><div>The Imperative is the most popular programming language in software development for system programming and low-level programming tasks, which includes direct level control over hardware resources.</div></article><article style=\"font-family: Roboto, sans-serif; color: rgb(81, 86, 94);\"><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; font-family: Roboto, sans-serif !important; font-size: 24px !important; line-height: 34px !important; color: rgb(39, 44, 55) !important;\">Other Ways to Classify Programming Languages&nbsp;</h2><h3 style=\"margin-top: 32px; margin-bottom: 24px; font-family: Roboto, sans-serif !important; color: rgb(39, 44, 55) !important; font-size: 18px !important; line-height: 26px !important;\">Front-end vs. Back-end Languages&nbsp;</h3><div>Front-end languages are called client-side languages, which are used to create virtual and interactive website elements that users can see. The front-end languages include HTML, CSS and JavaScript.&nbsp;</div><div>Backend languages are known as server-side languages. They create logic and functionality behind the scenes of the website, like processing, storing and managing the user\'s account and authentication. Python, Ruby, and Java are some of the backend languages.</div><h3 style=\"margin-top: 32px; margin-bottom: 24px; font-family: Roboto, sans-serif !important; color: rgb(39, 44, 55) !important; font-size: 18px !important; line-height: 26px !important;\">High-level vs. Low-level Languages&nbsp;</h3><div>High-level languages are easy to read and write since they are understandable. Developers can write code at a higher level of abstraction without worrying about the underlying hardware or operating system, as it is close to natural languages. They have built-in libraries and frameworks to simplify ordinary programming tasks like managing data structures or executing calculations. Examples of high-level languages are Python, Java or Ruby.&nbsp;</div><div>On the other hand, level languages are much more complex to understand and write. The code written in languages is very efficient and directly manipulates the hardware and memory of the computer. Yet the developer needs to rely on manual efforts and understanding. Assembly language and C are examples of this type of language.&nbsp;&nbsp;&nbsp;</div><h3 style=\"margin-top: 32px; margin-bottom: 24px; font-family: Roboto, sans-serif !important; color: rgb(39, 44, 55) !important; font-size: 18px !important; line-height: 26px !important;\">Interpreted vs. Compiled Languages&nbsp;</h3><div>The interpreter directly executes and reads the interpreted code line by line without compiling it into machine code. It can be executed immediately without requiring separate compilation steps, such as Python, Ruby and JavaScript.</div><div>In contrast, the compiler first translates the compiled languages into machine code. Further converts the human-readable code into a structure that computers can execute. Languages like C, C++, and Java fall into this category.</div></article><article style=\"font-family: Roboto, sans-serif; color: rgb(81, 86, 94);\"><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; font-family: Roboto, sans-serif !important; font-size: 24px !important; line-height: 34px !important; color: rgb(39, 44, 55) !important;\">What Programming Language Should You Learn?&nbsp;&nbsp;</h2><div>With rigorous updates in the tech market, a candidate should be up-to-date with new languages. Though, other factors play a significant role in the decision of what programming languages to learn.&nbsp;</div><ul style=\"margin-top: 0px; margin-bottom: 1rem; padding-left: 0px; list-style-position: initial; list-style-image: initial; margin-left: 20px; font-family: Roboto, sans-serif !important;\"><li aria-level=\"1\" style=\"margin-bottom: 14px; font-family: Roboto, sans-serif !important; line-height: 24px !important;\">Firstly, one needs to understand their goals and what career one wants to pursue after learning the programming language.</li><li aria-level=\"1\" style=\"margin-bottom: 14px; font-family: Roboto, sans-serif !important; line-height: 24px !important;\">Next, conduct thorough market research and narrow down the field you want to enter.</li><li aria-level=\"1\" style=\"margin-bottom: 14px; font-family: Roboto, sans-serif !important; line-height: 24px !important;\">After that, you need to understand the industry demand and the job portfolio of the desired profession. Learn the skills and languages that are demanded in the chosen field.&nbsp;</li><li aria-level=\"1\" style=\"margin-bottom: 14px; font-family: Roboto, sans-serif !important; line-height: 24px !important;\">You might want to start one of the easiest programming languages and gradually elevate your difficulty level. Python and Ruby are great languages, to begin with.</li><li aria-level=\"1\" style=\"margin-bottom: 14px; font-family: Roboto, sans-serif !important; line-height: 24px !important;\">Look for simply available material where you can learn quickly. Join communities and network with people at the top level of the field.&nbsp;</li><li aria-level=\"1\" style=\"margin-bottom: 14px; font-family: Roboto, sans-serif !important; line-height: 24px !important;\">Lastly, keep reinventing and learning as the market is constantly changing.</li></ul></article><article style=\"font-family: Roboto, sans-serif; color: rgb(81, 86, 94);\"><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; font-family: Roboto, sans-serif !important; font-size: 24px !important; line-height: 34px !important; color: rgb(39, 44, 55) !important;\">What Are the Best Programming Languages to Learn in 2023?</h2><div>What coding and programming language should i learn? JavaScript and Python, two of the most popular languages in the startup industry, are in high demand. Most startups use Python-based backend frameworks such as Django (Python), Flask (Python), and NodeJS (JavaScript). These languages are also considered to be the best programming languages to learn for beginners.</div><div>Below is a list of the most popular and best programming languages that will be in demand in 2023.</div><div>1. Javascript<br style=\"font-family: Roboto, sans-serif !important;\">2. Python<br style=\"font-family: Roboto, sans-serif !important;\">3. Go<br style=\"font-family: Roboto, sans-serif !important;\">4. Java<br style=\"font-family: Roboto, sans-serif !important;\">5. Kotlin<br style=\"font-family: Roboto, sans-serif !important;\">6. PHP<br style=\"font-family: Roboto, sans-serif !important;\">7. C#<br style=\"font-family: Roboto, sans-serif !important;\">8. Swift<br style=\"font-family: Roboto, sans-serif !important;\">9. R<br style=\"font-family: Roboto, sans-serif !important;\">10. Ruby<br style=\"font-family: Roboto, sans-serif !important;\">11. C and C++<br style=\"font-family: Roboto, sans-serif !important;\">12. Matlab<br style=\"font-family: Roboto, sans-serif !important;\">13. TypeScript<br style=\"font-family: Roboto, sans-serif !important;\">14. Scala<br style=\"font-family: Roboto, sans-serif !important;\">15. SQL<br style=\"font-family: Roboto, sans-serif !important;\">16. HTML<br style=\"font-family: Roboto, sans-serif !important;\">17. CSS<br style=\"font-family: Roboto, sans-serif !important;\">18. NoSQL<br style=\"font-family: Roboto, sans-serif !important;\">19. Rust<br style=\"font-family: Roboto, sans-serif !important;\">20. Perl</div></article></div>', 8, 1, 'COVER-64baa64818c1c1.96344816.jpg', '2023-07-21 18:37:44'),
(20, 'Hello, World test 1', '<div><h2>Lorem, ipsum dolor sit amet consectetur adipisicing elit.&nbsp;</h2></div><div><span style=\"background-color: blue;\"><font color=\"#ffffff\"><br></font></span></div><div><span style=\"background-color: blue;\"><font color=\"#ffffff\">A similique, eaque incidunt vel officiis, veniam quaerat cupiditate excepturi accusantium maiores porro rerum adipisci aliquam accusamus! Eum voluptate, fuga voluptates harum.</font></span><font color=\"#ff0000\"><br></font></div><div><font color=\"#ff0000\"><br></font></div><div><img src=\"https://images.unsplash.com/photo-1689267305146-155a1459752c?ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&amp;auto=format&amp;fit=crop&amp;w=1228&amp;q=80\" align=\"left\"><font color=\"#ff0000\"><br></font></div><div><font color=\"#ff0000\"><br></font></div><div><font color=\"#ff0000\">Lorem, ipsum dolor sit amet consectetur adipisicing elit. A similique, eaque incidunt vel officiis, veniam quaerat cupiditate excepturi accusantium maiores porro rerum adipisci aliquam accusamus! Eum voluptate, fuga voluptates harum.</font><br></div><div><br></div><div><br><br><div class=\"videoEmbed\" style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube-nocookie.com/embed/5v1DvTLzMrA?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" webkitallowfullscreen=\"\" mozallowfullscreen=\"\" allowfullscreen=\"\"></iframe></div><br><br>&nbsp; &nbsp;</div><div><ol><li>Lorem, ipsum dolor sit&nbsp;</li><li>amet consectetur adipisicing elit.</li><li>&nbsp;A similique, eaque incidunt vel&nbsp;</li><li>officiis, veniam quaerat cupiditate&nbsp;</li><li>excepturi accusantium maiores porro rerum adipisci aliquam accusamus!</li><li>&nbsp;Eum voluptate, fuga voluptates harum.</li></ol><div><br></div><div><br></div><div><table class=\"table-1\"><tbody><tr><td>asdas</td><td>asda</td></tr><tr><td>asdasd</td><td><a href=\"https://www.youtube.com/channel/UC4fluVc3N9SpAgTItIZ3Mow\" target=\"_blank\">MY YouTube</a></td></tr></tbody></table><br></div></div><div><br></div><div><br></div><div><br></div>', 7, 1, 'COVER-64bab16c6cb184.30984126.png', '2023-07-21 19:25:16');



CREATE TABLE `post_like` (
  `like_id` int(11) NOT NULL,
  `liked_by` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `liked_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_like`
--

INSERT INTO `post_like` (`like_id`, `liked_by`, `post_id`, `liked_at`) VALUES
(61, 4, 14, '2023-07-21 19:04:18'),
(62, 4, 13, '2023-07-21 19:04:22'),
(63, 4, 12, '2023-07-21 19:04:24'),
(64, 2, 14, '2023-07-21 19:05:10'),
(66, 2, 12, '2023-07-21 19:05:47'),
(68, 2, 15, '2023-07-21 19:11:30'),
(69, 6, 15, '2023-07-21 19:17:00'),
(70, 6, 14, '2023-07-21 19:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `username`, `password`) VALUES
(2, 'Jhon Doe', 'john', '$2y$10$5KdCaBOhNE6HZOmn39jO4OOyKUI1xC1St51KH8DhtXGX8drct98/q'),
(3, 'Khalid Jemal', 'khalid', '$2y$10$LoZNyJVQpBu/M7BEQdUmlOVVXaV65TxZwLAFejNBdD5a/JxjJAEwG'),
(4, 'Oliver Jr', 'oliver', '$2y$10$BUU6wlANM91k7CiQUV2GveWMx1nKj0HnoNUv5bRp1.vslrI/.tumu'),
(5, 'James Jr ', 'james', '$2y$10$MmbFLq6Qqeb4PnPHF9JK4OSqzBt8.GG3SicdpIYiKo/Xo.6OVu9QO'),
(6, 'John Jr', 'jr_john', '$2y$10$KpVvp9ixSCn/9FMR3k0tn.0Oul5lf2jGaCGPOgKyyxQTdyMk8xtlG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_like`
--
ALTER TABLE `post_like`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post_like`
--
ALTER TABLE `post_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



// join to obtain users along with the comments made on all the posts -nested query




SELECT subquery.* FROM (
  SELECT
    c.comment_id,
    c.comment,
    p.post_id AS post_id,
    p.post_title AS post_title,
    a.username AS user_username,
    a.first_name AS user_first_name,
    a.last_name AS user_last_name
  FROM
    comment c
  INNER JOIN
    post p ON c.post_id = p.post_id
  INNER JOIN
    admin a ON c.user_id = a.id
) AS subquery;





//  function will take the post_id as a parameter and return the count of comments for that post.
DELIMITER //

CREATE FUNCTION GetCommentCount(postId INT)
RETURNS INT
BEGIN
    DECLARE commentCount INT;
    
    SELECT COUNT(*) INTO commentCount
    FROM comment
    WHERE post_id = postId;
    
    RETURN commentCount;
END;
//

DELIMITER ;




//trigger will automatically update a timestamp (updated_at) whenever a record in the post table is updated:

DELIMITER //

CREATE TRIGGER update_post_timestamp
BEFORE UPDATE ON post
FOR EACH ROW
BEGIN
    SET NEW.crated_at = CURRENT_TIMESTAMP;
END;
//

DELIMITER ;



//procedure to check for duplicate users in your database schema,
DELIMITER //
CREATE PROCEDURE CheckForDuplicateUsers()
BEGIN
    DECLARE duplicateCount INT;

    -- Create a temporary table to store user counts
    CREATE TEMPORARY TABLE temp_user_counts (
        username VARCHAR(255),
        count INT
    );

    -- Populate the temporary table with user counts
    INSERT INTO temp_user_counts
    SELECT username, COUNT(*)
    FROM users
    GROUP BY username
    HAVING COUNT(*) > 1;

    -- Get the count of duplicate users
    SELECT COUNT(*) INTO duplicateCount FROM temp_user_counts;

    -- Display the duplicate users or perform any other action
    IF duplicateCount > 0 THEN
        -- You can SELECT, DELETE, or perform any other action on the duplicate users
        SELECT * FROM temp_user_counts;
    ELSE
        -- No duplicate users found
        SELECT 'No duplicate users found';
    END IF;

    -- Drop the temporary table
    DROP TEMPORARY TABLE temp_user_counts;
END;
//
DELIMITER ;
