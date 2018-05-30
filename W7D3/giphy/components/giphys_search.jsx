import React from 'react';

import GiphysIndex from './giphys_index';


class GiphysSearch extends React.Component{
  constructor(props) {
    super(props);
    this.state = {searchTerm: ""};
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }

  componentDidMount() {
  this.props.fetchSearchGiphys('golden+retriever');
}

  handleSubmit(e){
    e.preventDefault();
    let searchTerm = this.state.searchTerm.split(' ').join('+');
    this.props.fetchSearchGiphys(searchTerm);
  }

  handleChange(e){
    this.setState({searchTerm : e.currentTarget.value});
  }

  render() {
  let { giphys } = this.props;

  return (
    <div>
      <form className="search-bar">
        <input value={this.state.searchTerm} onChange={this.handleChange} />
        <button type="submit" onClick={this.handleSubmit}>Search Giphy</button>
      </form>
      <GiphysIndex giphys={giphys} />
    </div>
  );
  }
}


export default GiphysSearch;
