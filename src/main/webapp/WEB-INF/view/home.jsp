<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>

        <style>
            * {
                box-sizing: border-box;
            }

            .col-md-3 {
                display: inline-block;
                margin-left: -4px;
            }

            .col-md-3 img {
                width: 100%;
                height: auto;
            }


            body .carousel-control-prev-icon,
            body .carousel-control-next-icon {


                background-color: black;

            }

            #headerimage {
                background-image: url('https://www.infinityfitness.com/wp-content/uploads/2019/06/Rapid-Fat-Loss-5-10-15-25-weight-Training-1920x500.jpg');
                background-repeat: no-repeat;
                background-position: center top;

                height: 500px;
            }

        </style>
    </head>
    <body>

        <%@include file="navbar.jsp" %>

        <div class="bg" id="headerimage">
            <div class="container-flex .d-none .d-lg-block .d-xl-none">
                <div class="row d-flex justify-content-center px-0 mx-0">
                    <div id="carouselExampleSlidesOnly" class="carousel slide text-center col-md-4" data-ride="carousel" data-interval="4000">
                        <div class="carousel-inner text-center">
                            <div class="carousel-item active text-center" style="color: white;">
                                <br><br><br>
                                <h1>CROSS PERSONAL</h1>
                                <br>
                                A perfect synthesis of expert detailing and style for a complete total body workout. Enjoy a multisensory experience.
                                <br>
                                <br>
                                <button class="btn btn-info" style="border-radius:0;padding-left:20px;padding-right:20px">DISCOVER MORE</button>


                            </div>
                            <div class="carousel-item text-center" style="color: white;">
                                <br><br><br>
                                <h1>SUPREME RUNNING PERFORMANCE</h1>
                                <br>
                                Enhance your power. Improve your cardio. Analyse and increase your performance with the most advanced running equipment ever.
                                <br><br>
                                <button class="btn btn-info" style="border-radius:0;padding-left:20px;padding-right:20px">DISCOVER SKILLRUN</button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <br><br>

        <div id="demo" class="carousel slide col-10 offset-md-1" data-ride="carousel" data-interval="false">
            <h4 class="text-center">PRODUCTS</h4>
            <br>
            <br>

            <!-- The slideshow -->
            <div class="container carousel-inner no-padding">
                <div class="carousel-item active">
                    <div class="col-xs-3 col-sm-3 col-md-3">
                        <a href="${pageContext.request.contextPath}/products/treadmills"><img
                                src="https://img.icons8.com/windows/100/000000/treadmill.png"
                                style="width:100px;height:100px"></a>
                    </div>
                    <div class="col-xs-3 col-sm-3 col-md-3">
                        <a href="${pageContext.request.contextPath}/products/elliptical"><img
                                src="https://img.icons8.com/windows/100/000000/stepper.png"
                                style="width:100px;height:100px"></a>
                    </div>
                    <div class="col-xs-3 col-sm-3 col-md-3">
                        <a href="${pageContext.request.contextPath}/products/bikes"><img
                                src="https://img.icons8.com/ios-filled/100/000000/spinning.png"
                                style="width:100px;height:100px"></a>
                    </div>
                    <div class="col-xs-3 col-sm-3 col-md-3">
                        <a href="${pageContext.request.contextPath}/products/benches"><img
                                src="https://img.icons8.com/ios-filled/100/000000/bench-press.png"
                                style="width:100px;height:100px"></a>
                    </div>

                </div>
                <div class="carousel-item">
                    <div class="col-xs-3 col-sm-3 col-md-3">
                        <a href="${pageContext.request.contextPath}/products/dumbbells"><img
                                src="https://img.icons8.com/material-sharp/100/000000/dumbbell.png"
                                style="width:100px;height:100px"></a>
                    </div>
                    <div class="col-xs-3 col-sm-3 col-md-3">
                        <a href="${pageContext.request.contextPath}/products/tools"><img
                                src="https://img.icons8.com/ios-glyphs/100/000000/rod-barbells.png"
                                style="width:100px;height:100px"></a>
                    </div>
                    <div class="col-xs-3 col-sm-3 col-md-3">
                        <a href="${pageContext.request.contextPath}/products/multigyms"><img
                                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUt80EtI8TWLQdXSZqxne5vaN4CqBPZbWJ7Bxfzr5HE8wUovMa&s"
                                style="width:100px;height:100px"></a>
                    </div>
                    <div class="col-xs-3 col-sm-3 col-md-3">
                        <a href="${pageContext.request.contextPath}/products/kettlebells"><img
                                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlXRLFNb9xBWwJVJ7HKN6eYKgj01m-pAWgm0JjRn75Nsx9ko_xrA&s"
                                style="width:100px;height:100px"></a>
                    </div>
                </div>

            </div>
            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
        <br>
        <br>
        <div class="wrapper text-center">
            <button class="btn btn-info" id="btnall">View all products ></button>
        </div>
        <br>
        <div class="col-12 text-center" style="background-color: rgb(233, 231, 229);"><br>
            <p style="font-size: 140%;">Need advice choosing the perfect fitness equipment?</p>
            <h5 style="font-size: 140%;"><u><a href="${pageContext.request.contextPath}/contact" style="color:black">Contact us</a></u></h5>
            <br>
        </div>
        <br>
        <h3 class="text-center">OUR MOST POPULAR PRODUCTS</h3>
        <br>
        <div class="container-flex col-10 offset-md-1 text-center">
            <div class="row">
                <div class="col-lg-4 col-md-6 py-2"><a><img src="https://www.technogym.com/wpress/wp-content/uploads/2018/10/18dda1acd4c24347a786d063b4739cb6.jpg"
                                                            class="img-fluid" alt="Responsive image" style="max-width:400px"></a>
                    <br><a href="${pageContext.request.contextPath}/products/treadmills"><h4 style="color: black;">MYRUN</h4></a></div><br>
                <div class="col-lg-4 col-md-6 py-2"><a><img src="https://www.technogym.com/wpress/wp-content/uploads/2018/10/bb7ddaa91201462591dc5c6afbbc92de.jpg"
                                                            class="img-fluid" alt="Responsive image" style="max-width:400px"></a>
                    <br><a href="${pageContext.request.contextPath}/products/treadmills"><h4 style="color: black;">RUN PERSONAL</h4></a></div><br>
                <div class="col-lg-4 col-md-6 py-2"><a><img src="https://www.technogym.com/wpress/wp-content/uploads/2018/10/4b203e12892b4fc38848b5a79454c0ca.jpg"
                                                            class="img-fluid" alt="Responsive image" style="max-width:400px"></a>
                    <br><a href="${pageContext.request.contextPath}/products/bikes"><h4 style="color: black;">RECLINE PERSONAL</h4></a></div><br>

                <div class="col-lg-4 col-md-6 py-2"><a hre><img src="https://www.technogym.com/wpress/wp-content/uploads/2018/10/19cc24e00eb84cddb1a3992e174dc411.jpg"
                                                            class="img-fluid" alt="Responsive image" style="max-width:400px"></a>
                    <br><a href="${pageContext.request.contextPath}/products/elliptical"><h4 style="color: black;">CROSS PERSONAL</h4></a></div>
                <div class="col-lg-4 col-md-6 py-2"><a><img src="https://www.technogym.com/wpress/wp-content/uploads/2018/10/631e94aebef04844a81ca73f693ae000.jpg"
                                                            class="img-fluid" alt="Responsive image" style="max-width:400px"></a>
                    <br><a href="${pageContext.request.contextPath}/products/rowers"><h4 style="color: black;">SKILLROW</h4></a></div>
                <div class="col-lg-4 col-md-6 py-2"><a><img src="https://www.technogym.com/wpress/wp-content/uploads/2018/10/a6f244acbc4b4f599902504100e366de.jpg"
                                                            class="img-fluid" alt="Responsive image" style="max-width:400px"></a>
                    <br><a href="${pageContext.request.contextPath}/products/bikes"><h4 style="color: black;">MYCYCLING</h4></a></div>
            </div>
        </div>

        <br><br><br>
        <h4 class="text-center" style="color: rgb(43, 43, 66);">Swolepatrol, fitness and home workout gym equipment</h4>
        <br>
        <div class="col-6 offset-md-3" style="color: rgb(148, 146, 144);">
            <p>Swolepatrol is known all over the world as "The Wellness Company" - a company that has
                helped to develop the hedonistic concept of "fitness" into a true lifestyle: Wellness. Living the
                "Wellness"
                lifestyle means regular physical activity, correct nutrition, and a positive mental attitude.
                Swolepatrol's mission is to help people live better, and the company achieves this by providing the best
                possible
                gym equipment, services, content and programmes, all of which use technology to connect to one another
                so
                that
                users can experience Wellness no matter where they are: this is the Wellness Connected Experience.
                Indeed,
                everyone can find their own content and training programmes on any Swolepatrol equipment and on any
                personal
                device.</p>

            <p>Thanks to the modularity of the solutions that Swolepatrol offers, Wellness professionals can enable
                their
                customers to enjoy the same Wellness Connected Experience anywhere: gyms, hotels, medical practices,
                schools. In
                order to achieve this, Swolepatrol provides operators with all the tools they require: from financial
                services to
                interior design guidance, and from after sales assistance to marketing support.</p>
            <p>Furthermore, both operators and private individuals can enjoy access to the world's most complete range
                of <a href="${pageContext.request.contextPath}/products">gym
                    equipment</a>, for <a href="${pageContext.request.contextPath}/products/cardio">cardio training</a>, <a
                    href="${pageContext.request.contextPath}/products/strength">strength training</a>, <a
                    href="${pageContext.request.contextPath}/products/functionality">functional training</a> and <a href="">group
                    activities</a>. The quality of
                Swolepatrol products is also a direct result of the decades of experience gained as the official
                supplier to
                six
                Olympic and Paralympic Games. Anyone choosing Swolepatrol products can rest assured that they are
                training
                on
                equipment of the very highest level, just like a professional athlete. Thanks to the extensive range of
                <a href="${pageContext.request.contextPath}/products">products</a>
                and solutions available, Swolepatrol is able to help people achieve their sporting and wellbeing goals.
                Weight
                loss, strength training, or stretching exercises for the back: with Swolepatrol products, users can
                achieve
                all of
                this, and much more. Products conceived and designed for all types of user: from beginners to
                professionals.
                With <a href="">MYCYCLING</a> and <a href="">SKILLROW</a>, for example, users can hone their cycling and
                rowing fitness and skills. If the
                goal is to lose weight, or simply to stay fit, Swolepatrol treadmills, such as the <a href="">MYRUN</a>,
                provide the perfect
                solution. Meanwhile, the <a href="">PURE STRENGTH</a> range of products has been designed and conceived
                for
                those who want to
                train and improve their strength, and reach their maximum athletic potential.</p>
            <p>For those who prefer to train whilst taking part in engaging, sociable activities, Swolepatrol has
                developed
                a
                number of specific formats such as Group Cycle and SKILLROW Class. Finally, the quality, ease of use and
                safety
                that distinguish Swolepatrol equipment enable these solutions to provide valuable support in the
                rehabilitation
                and medical fields too.</p>
            <p>Swolepatrol's goal is to make Wellness accessible to everyone, everywhere, regardless of age.
                Swolepatrol is a leading company in the following products: <a
                    href="${pageContext.request.contextPath}/products/bike">exercise bikes</a>, <a
                    href="${pageContext.request.contextPath}/products/bench">gym
                    benches</a>, <a href="${pageContext.request.contextPath}/products/rower">professional rowers</a>, <a
                    href="${pageContext.request.contextPath}/products/functionality">selectorised machines</a>,
                <a href="${pageContext.request.contextPath}/products/treadmill">treadmills</a>, and much more…</p>

            The Swolepatrol logo is synonymous with WELLNESS worldwide.
            <br>
            <div class="text-center">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4Z12lZXomE0Uz5Gj2HBgxFC_1k4lbWx2NmrZW6Wro6L3HyU3pGQ&s"
                     class="img-fluid" alt=""></div>

        </div>
        <br>

        <%@include file="footer.jsp" %>
        <script>
   $("#btnall").on("click", function (ev) {
                location.href = "${pageContext.request.contextPath}/products";
            });
        </script>
    </body>
</html>
