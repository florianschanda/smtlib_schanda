(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b00000000000000000000000)))
;; x should be Float32(+oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE 340282356779733661637539395458142568449.0)))
;; w should be Float32(+oo)

(assert (= x w))
(check-sat)
(exit)
