(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x363ABF6D)))
;; x should be Float32(0x363ABF6D [Rational(12238701, 4398046511104), 0.000003])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x93980570)))
;; y should be Float32(0x93980570 [Rational(-622679, 162259276829213363391578010288128), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b01010000 #b10100011010001000000000)))
;; z should be Float32(0x2851A200 [Rational(26833, 2305843009213693952), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #x2851A200)))
(check-sat)
(exit)
