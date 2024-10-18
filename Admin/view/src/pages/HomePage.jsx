import React from "react";
import { FiTruck } from "react-icons/fi";
const HomePage = () => {
  return (
    <main>
      <article>
        <section className="section hero" id="home">
          <div className="container">
            <div className="hero-content">
              <p className="hero-subtitle has-before">
                Wellcome to Our Website
              </p>

              <h1 className="h1 hero-title">
                Delivery at your <i>Fingertips</i>
              </h1>

              <p className="hero-text">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore
                esse saepe cumque temporibus sapiente eligendi, quis possimus
                alias assumenda doloremque vitae. Dolores necessitatibus, magni
                voluptatum sed officia inventore aut nam.
              </p>

              <div className="btn-group">
                <a href="#" className="btn btn-primary">
                  Support More
                </a>

                <button className="flex-btn">
                  <div className="btn-icon">
                    <FiTruck />
                  </div>

                  <span className="span">How it works</span>
                </button>
              </div>
            </div>

            <figure
              className="hero-banner has-before img-holder"
              style={{ "--width": 650, "--height": 650 }}
            >
              <img
                src="/hero-banner.jpg"
                width="650"
                height="650"
                alt="hero banner"
                className="img-cover"
              />
            </figure>
          </div>
        </section>
      </article>
    </main>
  );
};

export default HomePage;
