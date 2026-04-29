(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10101101100110001010001)))
;; x should be Float32(0xCAD6CC51 [Rational(-14077009, 2), -7038504.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 16414417.0 16.0)))))
;; w should be Float32(0xC97A76D1 [Rational(-16414417, 16), -1025901.062500])

(assert (distinct x w))
(check-sat)
(exit)
