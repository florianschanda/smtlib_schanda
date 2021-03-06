(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10100110110010110111111)))
;; x should be Float32(0x4AD365BF [Rational(13854143, 2), 6927071.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b10100010000110011110111)))
;; y should be Float32(0xCAD10CF7 [Rational(-13700343, 2), -6850171.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000001 #b00000000000000000000000)))
;; z should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #xD62CA0C5)))
(check-sat)
(exit)
