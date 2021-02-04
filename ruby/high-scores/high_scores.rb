class HighScores
  attr_reader :scores

  def initialize(scores) =
    @scores = scores

  def latest =
    scores.last

  def personal_best =
    personal_tops.first

  def personal_top_three =
    personal_tops.take(3)

  def latest_is_personal_best? =
    latest == personal_best

  private

  def personal_tops =
    scores.sort.reverse
end
