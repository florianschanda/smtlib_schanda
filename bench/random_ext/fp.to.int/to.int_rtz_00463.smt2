(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10101011001111011000011)))
;; x should be Float32(0x4AD59EC3 [Rational(13999811, 2), 6999905.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 6999905

(declare-const z Int)
(assert (= z 6999905))
(assert (not (= y z)))
