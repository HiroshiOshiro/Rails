class SampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # 動作確認ログを出力するだけ
    Sidekiq.logger.info "サンプルジョブを実行しました"
  end
end
