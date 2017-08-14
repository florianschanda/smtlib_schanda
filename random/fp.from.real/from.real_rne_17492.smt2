(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10010010 #b00101101101111110001000)))
;; x should be Float32(0xC916DF88 [Rational(-1235953, 2), -617976.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 49438123037.0 80000.0)))))
;; w should be Float32(0xC916DF89 [Rational(-9887625, 16), -617976.562500])

(assert (distinct x w))
(check-sat)
(exit)
