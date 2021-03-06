(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFFBE192F)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b10100001010000000001111)))
;; y should be Float32(0xCAD0A00F [Rational(-13672463, 2), -6836231.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xC98576B4)))
;; z should be Float32(0xC98576B4 [Rational(-2186669, 2), -1093334.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
