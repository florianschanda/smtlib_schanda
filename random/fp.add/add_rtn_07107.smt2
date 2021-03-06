(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10000011 #b10110011100101111000001)))
;; x should be Float32(0xC1D9CBC1 [Rational(-14273473, 524288), -27.224489])

(declare-const y Float32)
(assert (= y (fp #b1 #b00111000 #b10110100011010001000101)))
;; y should be Float32(0x9C5A3445 [Rational(-14300229, 19807040628566084398385987584), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTN x y)))
(assert (= result (fp #b1 #b10000011 #b10110011100101111000010)))
(check-sat)
(exit)
