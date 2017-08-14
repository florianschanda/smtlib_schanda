(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01000100110111101011111)))
;; x should be Float32(0x00226F5F [Rational(2256735, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 161045977527200683266465915790328146948540848663748111.0 50925899408362152156711142210234454026286709841648406265903511233859532494083417654584934400.0))))
;; w should be Float32(0x00226F5F [Rational(2256735, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
