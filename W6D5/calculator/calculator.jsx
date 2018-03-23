import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    this.state = {result: 0, num1: "", num2: ""};
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
  }


  setNum1(e) {
    e.preventDefault();
    this.setState({num1: e.target.value});
  }

  setNum2(e) {
    e.preventDefault();
    this.setState({num2: e.target.value});
  }

  add(e){
    e.preventDefault();
    this.setState({result: Number(this.state.num1) + Number(this.state.num2) });
  }

  sub(e){
    e.preventDefault();
    this.setState({result: Number(this.state.num1) - Number(this.state.num2)});
  }

  multi(e){
    e.preventDefault();
    this.setState({result: Number(this.state.num1) * Number(this.state.num2)});
  }

  divide(e){
    e.preventDefault();
    this.setState({result: Number(this.state.num1) / Number(this.state.num2)});
  }

  clear(e){
    e.preventDefault();
    this.setState({num1: "", num2: ""});
  }

  render(){
    return (
      <div>
        <h1>Result: {this.state.result}</h1>
        <input type="number" onChange={this.setNum1} value={this.state.num1} />
        <input type="number" onChange={this.setNum2} value={this.state.num2} />
        <button onClick={this.clear.bind(this)}>Clear</button>
        <br />
        <button onClick={this.add.bind(this)}>+</button>
        <button onClick={this.sub.bind(this)} >-</button>
        <button onClick={this.multi.bind(this)}>*</button>
        <button onClick={this.divide.bind(this)}>/</button>
      </div>
    );
  }
}

export default Calculator;
