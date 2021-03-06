(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01110110100101000010010)))
;; x should be Float32(0x003B4A12 [Rational(1942793, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11001011 #b00101110000010001010011)))
;; y should be Float32(0x65970453 [Rational(89144638333739551686656), 89144638333739551686656.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x6D9A8A70)))
;; z should be Float32(0x6D9A8A70 [Rational(5978506522580005101248708608), 5978506522580005101248708608.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b0 #b11011011 #b00110101000101001110001)))
(check-sat)
(exit)
