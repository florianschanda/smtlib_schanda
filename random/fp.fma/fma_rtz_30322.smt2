(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11011011 #b10011100111000111101000)))
;; x should be Float32(0x6DCE71E8 [Rational(7986452028729695376467034112), 7986452028729695376467034112.000000])

(declare-const y Float32)
(assert (= y (_ NaN 8 24)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x924D121C)))
;; z should be Float32(0x924D121C [Rational(-3359879, 5192296858534827628530496329220096), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
