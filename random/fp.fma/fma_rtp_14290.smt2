(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x496B0338)))
;; x should be Float32(0x496B0338 [Rational(1925223, 2), 962611.500000])

(declare-const y Float32)
(assert (= y (_ -oo 8 24)))
;; y should be Float32(-oo)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4AE19971)))
;; z should be Float32(0x4AE19971 [Rational(14784881, 2), 7392440.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b1 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
