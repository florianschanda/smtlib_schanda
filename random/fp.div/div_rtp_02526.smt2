(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCC256A59)))
;; x should be Float32(0xCC256A59 [Rational(-43362660), -43362660.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8CEB74AC)))
;; y should be Float32(0x8CEB74AC [Rational(-3857707, 10633823966279326983230456482242756608), -0.000000])

(declare-const result Float32)
(assert (= result (fp.div RTP x y)))
(assert (not (= result ((_ to_fp 8 24) #x7EB3D933))))
(check-sat)
(exit)
