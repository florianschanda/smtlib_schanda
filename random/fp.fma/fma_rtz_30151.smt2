(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b11100001100000000101001)))
;; x should be Float32(0x4970C029 [Rational(15777833, 16), 986114.562500])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00000000000000000000000)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCC3DDF92)))
;; z should be Float32(0xCC3DDF92 [Rational(-49774152), -49774152.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #xCC3DDF92))))
(check-sat)
(exit)
