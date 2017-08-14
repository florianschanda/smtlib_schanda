(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b01001001 #b01101001101000111000011)))
;; x should be Float32(0x24B4D1C3 [Rational(11850179, 151115727451828646838272), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x3C969A3860000000 [Rational(11850179, 151115727451828646838272), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x3C969A3860000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
