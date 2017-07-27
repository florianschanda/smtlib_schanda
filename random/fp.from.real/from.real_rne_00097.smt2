(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b11111001 #b01001101010110001010010)))
;; x should be Float32(0xFCA6AC52 [Rational(-6923330797423485146597311907805265920), -6923330797423485146597311907805265920.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 3792471103494599431801529998314064059.0))))
;; w should be Float32(0xFC3699D1 [Rational(-3792471182434651260855885248201752576), -3792471182434651260855885248201752576.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
