(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11010110110101110111111)))
;; x should be Float32(0x4AEB6BBF [Rational(15428543, 2), 7714271.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x415D6D77E0000000 [Rational(15428543, 2), 7714271.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010101 #b1101011011010111011111100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
