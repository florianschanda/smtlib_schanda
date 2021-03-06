(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10000111111011100000011)))
;; x should be Float32(0x0043F703 [Rational(4454147, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10001111100010000000001)))
;; y should be Float32(0x8047C401 [Rational(-4703233, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010100 #b00100111010110111010010)))
;; z should be Float32(0xCA13ADD2 [Rational(-4839145, 2), -2419572.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #xCA13ADD3)))
(check-sat)
(exit)
