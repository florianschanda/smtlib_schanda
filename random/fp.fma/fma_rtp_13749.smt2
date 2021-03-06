(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000000)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b00010010111000110000010)))
;; y should be Float32(0x4A097182 [Rational(4503745, 2), 2251872.500000])

(declare-const z Float32)
(assert (= z (_ -oo 8 24)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #xFF800000))))
(check-sat)
(exit)
