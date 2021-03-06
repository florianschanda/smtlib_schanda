(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.int RTZ precise_int)
(declare-const x Int)
(assert (= x 774031407310774))
(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) x)))
;; y should be Float64(0x4305FFD1D89F3DB0 [Rational(774031407310774), 774031407310774.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000110000 #b0101111111111101000111011000100111110011110110110000)))
(assert (not (= y z)))
