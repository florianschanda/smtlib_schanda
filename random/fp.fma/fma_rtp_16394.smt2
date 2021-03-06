(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5C973CD4)))
;; x should be Float32(0x5C973CD4 [Rational(340556821712338944), 340556821712338944.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11010000 #b10010011010110000111011)))
;; y should be Float32(0x6849AC3B [Rational(3809491017742099874316288), 3809491017742099874316288.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b00000000000000000000001)))
;; z should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #x7F800000)))
(check-sat)
(exit)
