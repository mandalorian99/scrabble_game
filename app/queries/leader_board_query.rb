class LeaderBoardQuery < BaseQuery
  def get_top_scorers(match_count)
    sql = <<-SQL
      SELECT
        users.name,
        leader_boards.* 
      FROM leader_boards
      JOIN users
      ON users.id = leader_boards.player_id
      WHERE leader_boards.total_games >= :threshold
      ORDER BY leader_boards.score DESC
    SQL
    @query = ActiveRecord::Base.send(:sanitize_sql_array, [sql, threshold: match_count])
  end
end