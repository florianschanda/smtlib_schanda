(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ +zero 8 24)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCADA06DF)))
;; y should be Float32(0xCADA06DF [Rational(-14288607, 2), -7144303.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b00101101011101010101111)))
;; z should be Float32(0x4A96BAAF [Rational(9878191, 2), 4939095.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #x4A96BAAF)))
(check-sat)
(exit)
