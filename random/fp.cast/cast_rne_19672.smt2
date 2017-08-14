(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11010110110101110111111)))
;; x should be Float32(0x4AEB6BBF [Rational(15428543, 2), 7714271.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0x4015D6D77E0000000000000000000000 [Rational(15428543, 2), 7714271.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x4015D6D77E0000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
