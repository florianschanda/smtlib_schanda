(set-info :smt-lib-version 2.6)
(set-logic QF_UFFPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA -inf)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b00000000000000000000000)))
;; x should be Float32(-oo)

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be unspecified

(declare-const z Int)
(assert (= z (- 555001910048370787378516456406965372998)))
(assert (not (= y z)))
