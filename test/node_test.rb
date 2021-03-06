require 'simplecov'
SimpleCov.start
require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "./lib/node.rb"

class NodeTest < Minitest::Test

  def test_node_exists
    node = Node.new(nil)
    assert_instance_of Node, node
  end

  def test_node_takes_data
    node = Node.new("a")
    assert_equal "a", node.data
  end

  def test_node_has_no_children_by_default
    node = Node.new(nil)
    assert node.children.empty?
  end

  def test_node_term_is_false_by_default
    node = Node.new(nil)
    refute node.term
  end


end
