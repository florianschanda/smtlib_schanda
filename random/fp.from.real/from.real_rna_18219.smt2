(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11011101010011111000111)))
;; x should be Float32(0x806EA7C7 [Rational(-7251911, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 8972330469.0 7136238463529799405291429847247475681913733120000.0))))
;; w should be Float32(0x000DB0D1 [Rational(897233, 713623846352979940529142984724747568191373312), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
