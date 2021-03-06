(set-info :source "Generated by Martin Brain on 2017-09-11 17:05:13+01:00 from revision 3122, file rewrite-rules.cpp (fdf03bf392b41a809f35d488ae2fd86b392eb758ad972ab139c17ad7613a9481bc2942baec2db40aedf37ca11151a5363c8a0bc29aa2e8ecd70d2a4c1592fbfd  rewrite-rules.cpp), benchmark zero_is_not_quite_identity_4_unsat using cbmc revision 6561 command /home/martin/working-copies/cbmc-subversion/src/cbmc//cbmc --slice-formula --smt2 --fpa --outfile tmp.smt2 --function zero_is_not_quite_identity_4_unsat --round-to-plus-inf rewrite-rules.cpp")
(set-logic QF_ABVFP)
(set-info :status unsat)
; SMT 2

; find_symbols
(declare-fun |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2| () Bool)
; convert
(define-fun |B0| () Bool (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|))

; convert
(define-fun |B1| () Bool (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|))

; convert
(define-fun |B2| () Bool (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|))

; convert
(define-fun |B3| () Bool (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|))

; convert
(define-fun |B4| () Bool (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|))

; convert
(define-fun |B5| () Bool (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|))

; convert
(define-fun |B6| () Bool (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|))

; convert
(define-fun |B7| () Bool (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|))

; convert
(define-fun |B8| () Bool (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|))

; convert
(define-fun |B9| () Bool (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|))

; find_symbols
(declare-fun |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isZero$1!0@1#2| () Bool)
; convert
(define-fun |B10| () Bool (and (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|) (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isZero$1!0@1#2|)))

; find_symbols
(declare-fun |nondet_symex::nondet0| () (_ FloatingPoint 8 24))
; set_to true (equal)
(define-fun |zero_is_not_quite_identity_4_unsat::zero_is_not_quite_identity_4_unsat(float)::f@1#1| () (_ FloatingPoint 8 24) |nondet_symex::nondet0|)

; set_to true (equal)
(define-fun |zero_is_not_quite_identity_4_unsat::zero_is_not_quite_identity_4_unsat(float)::1::addU@1#2| () (_ FloatingPoint 8 24) (fp.add roundNearestTiesToEven |zero_is_not_quite_identity_4_unsat::zero_is_not_quite_identity_4_unsat(float)::f@1#1| (fp #b0 #b00000000 #b00000000000000000000000)))

; set_to true (equal)
(define-fun |smtlib_equal::smtlib_equal(float,float)::f@1#1| () (_ FloatingPoint 8 24) |zero_is_not_quite_identity_4_unsat::zero_is_not_quite_identity_4_unsat(float)::f@1#1|)

; set_to true (equal)
(define-fun |smtlib_equal::smtlib_equal(float,float)::g@1#1| () (_ FloatingPoint 8 24) |zero_is_not_quite_identity_4_unsat::zero_is_not_quite_identity_4_unsat(float)::1::addU@1#2|)

; the following is a substitute for a string
(declare-fun string.0 () (Array (_ BitVec 64) (_ BitVec 8)))
(assert (= (select string.0(_ bv0 64)) (_ bv61 8)))
(assert (= (select string.0(_ bv1 64)) (_ bv0 8)))
; set_to true (equal)
(define-fun |smtlib_equal(float,float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_equal$1!0@1#2| () Bool ( = |smtlib_equal::smtlib_equal(float,float)::f@1#1| |smtlib_equal::smtlib_equal(float,float)::g@1#1| ) )

; set_to true (equal)
(define-fun |smtlib_equal(float,float)#return_value!0#1| () Bool |smtlib_equal(float,float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_equal$1!0@1#2|)

; set_to true (equal)
(define-fun |zero_is_not_quite_identity_4_unsat::zero_is_not_quite_identity_4_unsat(float)::1::eq@1#2| () Bool |smtlib_equal(float,float)#return_value!0#1|)

; set_to true (equal)
(define-fun |smtlib_isNaN::smtlib_isNaN(float)::f@1#1| () (_ FloatingPoint 8 24) |zero_is_not_quite_identity_4_unsat::zero_is_not_quite_identity_4_unsat(float)::f@1#1|)

; the following is a substitute for a string
(declare-fun string.1 () (Array (_ BitVec 64) (_ BitVec 8)))
(assert (= (select string.1(_ bv0 64)) (_ bv102 8)))
(assert (= (select string.1(_ bv1 64)) (_ bv112 8)))
(assert (= (select string.1(_ bv2 64)) (_ bv46 8)))
(assert (= (select string.1(_ bv3 64)) (_ bv105 8)))
(assert (= (select string.1(_ bv4 64)) (_ bv115 8)))
(assert (= (select string.1(_ bv5 64)) (_ bv78 8)))
(assert (= (select string.1(_ bv6 64)) (_ bv97 8)))
(assert (= (select string.1(_ bv7 64)) (_ bv78 8)))
(assert (= (select string.1(_ bv8 64)) (_ bv0 8)))
; set_to true (equal)
(define-fun |smtlib_isNaN(float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_isNaN$1!0@1#2| () Bool ( fp.isNaN |smtlib_isNaN::smtlib_isNaN(float)::f@1#1| ) )

; set_to true (equal)
(define-fun |smtlib_isNaN(float)#return_value!0#1| () Bool |smtlib_isNaN(float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_isNaN$1!0@1#2|)

; set_to true
(assert (= |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2| |smtlib_isNaN(float)#return_value!0#1|))

; set_to true (equal)
(define-fun |smtlib_isZero::smtlib_isZero(float)::f@1#1| () (_ FloatingPoint 8 24) |zero_is_not_quite_identity_4_unsat::zero_is_not_quite_identity_4_unsat(float)::f@1#1|)

; the following is a substitute for a string
(declare-fun string.2 () (Array (_ BitVec 64) (_ BitVec 8)))
(assert (= (select string.2(_ bv0 64)) (_ bv102 8)))
(assert (= (select string.2(_ bv1 64)) (_ bv112 8)))
(assert (= (select string.2(_ bv2 64)) (_ bv46 8)))
(assert (= (select string.2(_ bv3 64)) (_ bv105 8)))
(assert (= (select string.2(_ bv4 64)) (_ bv115 8)))
(assert (= (select string.2(_ bv5 64)) (_ bv90 8)))
(assert (= (select string.2(_ bv6 64)) (_ bv101 8)))
(assert (= (select string.2(_ bv7 64)) (_ bv114 8)))
(assert (= (select string.2(_ bv8 64)) (_ bv111 8)))
(assert (= (select string.2(_ bv9 64)) (_ bv0 8)))
; set_to true (equal)
(define-fun |smtlib_isZero(float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_isZero$1!0@1#2| () Bool ( fp.isZero |smtlib_isZero::smtlib_isZero(float)::f@1#1| ) )

; set_to true (equal)
(define-fun |smtlib_isZero(float)#return_value!0#1| () Bool |smtlib_isZero(float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_isZero$1!0@1#2|)

; set_to true
(assert (= |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isZero$1!0@1#2| |smtlib_isZero(float)#return_value!0#1|))

; set_to false
(assert (not (=> (and (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|) (not |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isZero$1!0@1#2|)) |zero_is_not_quite_identity_4_unsat::zero_is_not_quite_identity_4_unsat(float)::1::eq@1#2|)))

; convert
(define-fun |B11| () Bool |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isNaN$2!0@1#2|)

; convert
(define-fun |B12| () Bool |zero_is_not_quite_identity_4_unsat(float)::$tmp::return_value_smtlib_isZero$1!0@1#2|)

(check-sat)


(exit)
; end of SMT2 file
