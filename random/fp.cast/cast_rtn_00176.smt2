(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A1C2B42)))
;; x should be Float32(0x4A1C2B42 [Rational(5117345, 2), 2558672.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x4143856840000000 [Rational(5117345, 2), 2558672.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010100 #b0011100001010110100001000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
