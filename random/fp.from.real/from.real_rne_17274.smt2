(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01100100000111100111111)))
;; x should be Float32(0x4AB20F3F [Rational(11669311, 2), 5834655.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 1218912385.0 256.0))))
;; w should be Float32(0x4A914E41 [Rational(9522753, 2), 4761376.500000])

(assert (distinct x w))
(check-sat)
(exit)
