(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x1D2F1A45)))
;; x should be Float32(0x1D2F1A45 [Rational(11475525, 4951760157141521099596496896), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCAA9B083)))
;; y should be Float32(0xCAA9B083 [Rational(-11120771, 2), -5560385.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b00000000000000000000000)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b0 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
