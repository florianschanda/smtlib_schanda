(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10001111110010010111111)))
;; x should be Float32(0x4AC7E4BF [Rational(13100223, 2), 6550111.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 6550112

(declare-const z Int)
(assert (= z 6550112))
(assert (not (= y z)))
