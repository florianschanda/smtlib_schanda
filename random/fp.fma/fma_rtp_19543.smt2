(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x98CC9978)))
;; x should be Float32(0x98CC9978 [Rational(-1676079, 316912650057057350374175801344), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b00000000000000000000000)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCA1C852E)))
;; z should be Float32(0xCA1C852E [Rational(-5128855, 2), -2564427.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
