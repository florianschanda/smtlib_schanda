(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b01000011100101001000011)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4E0062FF)))
;; y should be Float32(0x4E0062FF [Rational(538492864), 538492864.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCAFB57C3)))
;; z should be Float32(0xCAFB57C3 [Rational(-16472003, 2), -8236001.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #xFFFFFFFF))))
(check-sat)
(exit)
