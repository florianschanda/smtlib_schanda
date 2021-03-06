(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10011111111111001111101)))
;; x should be Float32(0x4ACFFE7D [Rational(13631101, 2), 6815550.500000])

(declare-const y Float32)
(assert (= y (_ NaN 8 24)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4A0CB236)))
;; z should be Float32(0x4A0CB236 [Rational(4610331, 2), 2305165.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #xFFFFFFFF))))
(check-sat)
(exit)
