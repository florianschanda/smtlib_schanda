(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNA +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10100101 #b10010001001101111100111)))
;; x should be Float32(0x52C89BE7 [Rational(430804533248), 430804533248.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 430804533248

(declare-const z Int)
(assert (= z 430804533248))
(assert (not (= y z)))
