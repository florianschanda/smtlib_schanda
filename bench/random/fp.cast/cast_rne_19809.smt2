(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9906E2C)))
;; x should be Float32(0xC9906E2C [Rational(-2366347, 2), -1183173.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC1320DC580000000 [Rational(-2366347, 2), -1183173.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010011 #b0010000011011100010110000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
