(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ NaN 8 24)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (fp #b1 #b10010010 #b00101000110101010111000)))
;; y should be Float32(0xC9146AB8 [Rational(-1215831, 2), -607915.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010101 #b01000100010110001110011)))
;; z should be Float32(0xCAA22C73 [Rational(-10628211, 2), -5314105.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
