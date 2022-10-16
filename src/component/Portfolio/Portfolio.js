import styled from "styled-components";
import Card from "../Portfolio/Card";
import Portfolio_data from "../Portfolio/Portfolio_data";
export default function Portfolio() {
  return (
    <Wrapper>
      <section className="portfolio top">
        <div className="container">
          <div className="heading text-center">
            <h4>VISITEZ MON PORTFOLIO</h4>
            <h1>Mon portfolio</h1>
            <div className="content grid">
              {Portfolio_data.map((value, index) => {
                return (
                  <Card
                    key={index}
                    image={value.image}
                    category={value.category}
                    totalLike={value.totalLike}
                    title={value.title}
                  />
                );
              })}
            </div>
          </div>
        </div>
      </section>
    </Wrapper>
  );
}
const Wrapper = styled.div`
  .portfolio {
    position: relative;
  }
  .portfolio .box {
    position: relative;
  }
  .portfolio .box:hover {
    background: none;
    transform: translate(0);
  }

  .portfolio .img {
    height: 300px;
    overflow: hidden;
    transition: 0.5s;
  }
  .portfolio img {
    width: 100%;
    border-radius: 10px;
    transition: 0.5s;
  }
  .portfolio .box .img:hover {
    transform: scale(1.2);
  }

  .portfolio .category span {
    color: #ff014f;
    font-size: 13px;
    letter-spacing: 2px;
    font-weight: 500;
  }
  .portfolio .arrow {
    position: absolute;
    right: 30px;
    bottom: 11%;
    transform: rotate(-45deg);
    color: #ff014f;
    opacity: 0;
    transition: 0.5s;
  }

  .portfolio .title:hover .arrow {
    opacity: 1;
  }
  .portfolio h2 {
    font-size: 18px;
    transition: 0.5s;
    padding-bottom: 30px;
  }

  .portfolio .box:hover h2{
    color: #ff014f;
  }
  .portfolio .box:hover{
    color:black;
  }
  .portfolio label i{
    margin-right:10px;
  }
  /*------------popup--------*/
/*------------popup--------*/
body.active-modal {
  overflow-y: hidden;
}

.btn-modal {
  padding: 10px 20px;
  display: block;
  margin: 100px auto 0;
  font-size: 18px;
}

.modal,
.overlay {
  width: 100vw;
  height: 100vh;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  position: fixed;
  z-index: 9999;
}

.overlay {
  background-color: #ecf0f3;
}
.modal-content {
  position: absolute;
  top: 12%;
  left: 8%;
  line-height: 1.4;
  background: #f0f3f5;
  padding: 14px 28px;
  border-radius: 3px;
  max-width: 85%;
  min-width: 60%;
  z-index: 9999;
  box-shadow: 4px 4px 8px #cbcbcb, -4px -4px 8px #ffffff;
  padding: 50px;
  border-radius: 10px;
}

.modal-text {
  padding: 0 100px 0 50px;
}
.modal-text h1 {
  margin: 20px 0 20px 0;
  font-size: 30px;
}
.modal-text p {
  font-size: 17px;
  margin-bottom: 20px;
  line-height: 25px;
}
.modal-text button {
  margin-right: 20px;
  color: #ff014f;
}
.modal-text button i {
  margin-left: 10px;
}
.modal-text button.close-modal {
  position: absolute;
  top: 10px;
  right: 10px;
  width: 50px;
  height: 50px;
  text-align: center;
  border-radius: 50%;
  padding: 0 0;
  font-size: 20px;
}
.modal-text button.close-modal i {
  margin: 0;
}
   /*------------popup--------*/

   @media (max-width: 768px) {
  .modal,
  .overlay {
    overflow: scroll;
  }

  .modal .modal-img {
    margin: 50px 0 50px 0;
  }
  .modal-content {
    flex-direction: column;
  }
  .modal .right,
  .modal .left {
    padding: 0;
  }
}
`;
