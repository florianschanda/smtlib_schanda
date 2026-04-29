(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000011 #b01000000111111100011011)))
;; x should be Float32(0x01A07F1B [Rational(10518299, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x38340FE360000000 [Rational(10518299, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x38340FE360000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
