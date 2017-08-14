(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b10100111001111000001100)))
;; x should be Float32(0xC9D39E0C [Rational(-3467139, 2), -1733569.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 56805607933.0 32768.0)))))
;; w should be Float32(0xC9D39E0D [Rational(-13868557, 8), -1733569.625000])

(assert (distinct x w))
(check-sat)
(exit)
