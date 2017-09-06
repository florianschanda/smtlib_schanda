(set-info :smt-lib-version 2.6)
(set-logic QF_UFFPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA nan)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b00000001011101010011110)))
;; x should be Float32(NaN)

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be unspecified

(declare-const z Int)
(assert (= z (- 523422027461294062528990649488249748041)))
(assert (not (= y z)))
