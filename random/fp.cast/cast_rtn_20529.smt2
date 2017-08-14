(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A776E4E)))
;; x should be Float32(0x4A776E4E [Rational(8107815, 2), 4053907.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x414EEDC9C0000000 [Rational(8107815, 2), 4053907.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010100 #b1110111011011100100111000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
