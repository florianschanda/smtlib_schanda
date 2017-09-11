(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b11010111 #b00001001010100000110111)))
;; x should be Float32(0x6B84A837 [Rational(320745160658354410964910080), 320745160658354410964910080.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 320745160658354410964910080

(declare-const z Int)
(assert (= z 320745160658354410964910080))
(assert (not (= y z)))
