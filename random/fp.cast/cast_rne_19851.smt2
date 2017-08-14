(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b11110010 #b00111000001101111110001)))
;; x should be Float32(0xF91C1BF1 [Rational(-50660314311118602678597752952193024), -50660314311118602678597752952193024.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC723837E20000000 [Rational(-50660314311118602678597752952193024), -50660314311118602678597752952193024.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10001110010 #b0011100000110111111000100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
