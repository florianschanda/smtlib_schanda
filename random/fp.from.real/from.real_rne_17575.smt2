(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11111111111111111111111)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 598631016239776266819537684752133207199049119811763861.0 50925899408362152156711142210234454026286709841648406265903511233859532494083417654584934400.0)))))
;; w should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
